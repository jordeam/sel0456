import paho.mqtt.client as mqtt #import the client1
import time
############
def on_message(client, userdata, message):
    print("message received " ,str(message.payload.decode("utf-8")))
    print("message topic=",message.topic)
    print("message qos=",message.qos)
    print("message retain flag=",message.retain)
########################################
#broker_address="192.168.1.184"
broker_address="iot.eclipse.org"
broker_address="test.mosquitto.org"
print("creating new instance")
client = mqtt.Client("P1") #create new instance
client.on_message=on_message #attach function to callback
print(f"connecting to broker {broker_address}")
client.connect(broker_address) #connect to broker
client.loop_start() #start the loop
print("Subscribing to topic","house/bulbs/bulb1")
client.subscribe("house/bulbs/bulb1")
print("Publishing message to topic","house/bulbs/bulb1")
client.publish("house/bulbs/bulb1","OFF???")
time.sleep(4) # wait
client.loop_stop() #stop the loop
