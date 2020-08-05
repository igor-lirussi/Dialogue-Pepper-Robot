# Pepper Dialogue System

The code aims to give Pepper basic conversation abilities, this includes a speech recognition module, a conversational engine to formulate the answers and the speech synthesis. The dialogue is purpose-less, this means that no task is pursued except a normal and pleasant interaction (this is the objective). It can be used as a fall-back system also for a task oriented interaction, often the counterpart tends to ramble or to test the IQ of the robot asking general questions.


## Setup
Just control the [Dependencies](#dependencies), create an Anaconda environment or check in your system if everything is installed.

**Follow the steps in the notebook [Dialogue-Pepper.ipynb](Dialogue-Pepper.ipynb)** and
REMEMBER TO TURN ON THE RECOGNITION SERVICE with a shell in the speech-recognition folder. <br> Use python 2.7, or activate the Anaconda environment, and run the service:
 ```
python module_speechrecognition.py --pip (your robot IP)
```
or, if you want to run the speech recognition service on the robot,
everything you need should already be installed, simply clone the pepperspeechrecognition folder to your robot, ssh into it and run:
 ```
python module_speechrecognition.py
```



## Dependencies <a class="anchor" id="dependencies"></a>
The Speech Synthesis works with
* **Python 2.7** ,  because it uses
* [Pepper API (NAOqi 2.5) ](https://developer.softbankrobotics.com/pepper-naoqi-25/naoqi-developer-guide/naoqi-apis)


The Conversational Engine works with
* **Java** (because no AIML-2.0 systems in Python 2 were found)

The Speech Recognition module was built to be able to run ON Pepper computer (in the head) it's only dependencies are
* **Python 2.7** ,  because it uses
* [Pepper API (NAOqi 2.5) ](https://developer.softbankrobotics.com/pepper-naoqi-25/naoqi-developer-guide/naoqi-apis)
* **numpy**

All of them are pre-installed on Pepper, if you want to run on your computer just create an environment that has all them.

## Built With

* Python 2.7.18

## Changelog

**Version 1.0** - Initial release, 05 August 2020

## Authors

* **Igor Lirussi** @ KTH Royal Institute of Technology - Department of Robotics, Perception and Learning

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Johannes Bramauer @ Vienna University of Technology - for the [PepperSpeechRecognition](https://github.com/JBramauer/pepperspeechrecognition)
* Anthony Zang (Uberi) and his [SpeechRecognition](https://github.com/Uberi/speech_recognition)
