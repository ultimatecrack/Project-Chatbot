import requests

sender = input('Hi I am EDITH, how  can I help you?\n')

bot_message = ''
message=""

while bot_message != 'bye':
    message =   input('Your input:\n')
    r = requests.post('http://localhost:5002/webhooks/rest/webhook', json={"message": message})

    print("Bot says, ",end=' ')

    for i in r.json():
        bot_message = i
        print(f"{bot_message}")