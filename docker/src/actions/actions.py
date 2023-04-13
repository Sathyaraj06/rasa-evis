# This files contains your custom actions which can be used to run
# custom Python code.
#
# See this guide on how to implement these action:
# https://rasa.com/docs/rasa/custom-actions


# This is a simple example for a custom action which utters "Hello World!"

# from typing import Any, Text, Dict, List
#
# from rasa_sdk import Action, Tracker
# from rasa_sdk.executor import CollectingDispatcher
#
#
# class ActionHelloWorld(Action):
#
#     def name(self) -> Text:
#         return "action_hello_world"
#
#     def run(self, dispatcher: CollectingDispatcher,
#             tracker: Tracker,
#             domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
#
#         dispatcher.utter_message(text="Hello World!")
#
#         return []


from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.events import UserUtteranceReverted
import random


class MyCustomAction(Action):
    def name(self) -> Text:
        return "action_common"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        # Get the latest intent and its confidence score
        latest_intent = tracker.latest_message['intent'].get('name')
        intent_confidence = tracker.latest_message['intent'].get('confidence')

        # Get the corresponding intent category and response key for the latest intent
        response_key = tracker.latest_message['response_selector'][latest_intent]['response']['intent_response_key']

        # Get the corresponding utter message for the latest intent
        utter_responses = domain['responses'][f'utter_{response_key}']
        utter_message = random.choice(utter_responses)['text']

        response = {
            "intent": response_key,
            "confidence": intent_confidence,
            "message": utter_message
        }
        dispatcher.utter_message(json_message = response)

        # Return the webhook response
        return []
