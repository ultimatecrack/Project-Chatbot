<!-- ## greet
* greet
  - utter_greet 
  
  Commeneted as custom greet is implemented in actions.py-->

## thank
* thank
  - utter_noworries

## goodbye
* bye
  - utter_bye

<!--  
## Some question from FAQ
* faq
    - respond_faq
  
## sales form
* contact_sales
    - sales_form                   Run the sales_form action
    - form{"name": "sales_form"}   Activate the form
    - form{"name": null}           Deactivate the form
-->
## just sales, continue
* contact_sales
    - sales_form
    - form{"name": "sales_form"}
    - form{"name": null}
* faq
    - respond_faq
    - sales_form
    - form{"name": null}