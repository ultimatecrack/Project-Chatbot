from rasa_sdk.forms import FormAction

import logging
import json
import requests
from datetime import datetime
from typing import Any, Dict, List, Text, Union, Optional

from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.forms import FormAction
from rasa_sdk.events import (
    SlotSet,
    UserUtteranceReverted,
    ConversationPaused,
    EventType,
    FollowupAction,
)
import mysql.connector

class ServeDB:
    def __init__(self):
        self.mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="", 
            database="rasa"
            )
        self.mycursor = self.mydb.cursor()
    
    def save(self, job_function, use_case, budget, person_name, company, business_email, phone_number):
        sql = "INSERT INTO rasa1 (name, company, job, use_case, budget, business_email, phone_number) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (person_name, company, job_function, use_case, budget, business_email,phone_number)
        self.mycursor.execute(sql, val)
        self.mydb.commit()



class SalesForm(FormAction):
    """Collects sales information and adds it to the spreadsheet"""

    def name(self):
        return "sales_form"
    @staticmethod
    def required_slots(tracker):
        return [
        "job_function",
        "use_case",
        "budget",
        "person_name",
        "company",
        "business_email",
        "phone_number"
        ]

    def slot_mappings(self) -> Dict[Text, Union[Dict, List[Dict[Text, Any]]]]:
        """A dictionary to map required slots to
        - an extracted entity
        - intent: value pairs
        - a whole message
        or a list of them, where a first match will be picked"""
        return {"use_case": self.from_text(intent="inform")}

    def submit(
        self,
        dispatcher: CollectingDispatcher,
        tracker: Tracker,
        domain: Dict[Text, Any],
    ) -> List[Dict]:
        job_function = tracker.get_slot("job_function")
        use_case = tracker.get_slot("use_case")
        budget = tracker.get_slot("budget")
        person_name = tracker.get_slot("person_name")
        company = tracker.get_slot("company")
        business_email = tracker.get_slot("business_email")
        phone_number = tracker.get_slot("phone_number")

        servedb = ServeDB()
        servedb.save(job_function, use_case, budget, person_name, company, business_email, phone_number)
        
        msg = "Thanks {} for getting in touch, we'll contact you soon".format(person_name)
        dispatcher.utter_message(msg)
        return [SlotSet('person_name', person_name)]

class ActionGreetUser(Action):
    """Revertible mapped action for utter_greet"""
    def name(self):
        return "action_greet"
    def run(self, dispatcher, tracker, domain):
        dispatcher.utter_message(template="utter_greet")
        return [UserUtteranceReverted()]