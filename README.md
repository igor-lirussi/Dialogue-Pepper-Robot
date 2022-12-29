# Pepper Dialogue System

The code aims to give the robot basic conversation abilities, this includes a speech recognition module, a conversational engine to formulate the answers and the speech synthesis. 
The dialogue is purpose-less, this means that no task is pursued except a normal and pleasant interaction (this is the objective). 
It can be used as a fall-back system also for a task oriented interaction, often the counterpart tends to ramble or to test the IQ of the robot asking general questions.
 <br>
[Nao Robot version available here](https://github.com/igor-lirussi/Dialogue-Nao-Robot)

## Video of the Result
[![Pepper Dialogue](http://i3.ytimg.com/vi/wBcfLlm5Hnc/maxresdefault.jpg)](https://youtu.be/wBcfLlm5Hnc "Pepper Dialogue Video")

## Installation
With git bash you have to clone, possibly with SSH, the repository with the following command. <br>
**Pay attention to clone also the submodules with the --recurse-submodules or some parts of the project will miss**
```
git clone --recurse-submodules <repo_link>
```

## Setup
Just control the [Dependencies](#dependencies), check in your system if everything is installed.
Or create an Anaconda environment with Python2 and Jupyter Notebook:
```
conda create -n python2 python=2.7 anaconda ipykernel
source activate python2
```
- Download the [NAOqi Python SDK](https://github.com/igor-lirussi/pepperspeechrecognition/releases/tag/PyNaoQi_SDK)
- Create an Environment Variable called `PYTHONPATH` and set it to `path\to\python-sdk\lib`

### Robot Setup
- Connect Pepper to the Ethernet with a LAN cable
- Turn it on and wait a few minutes
- Obtain and note down the IP Address outloud
- **Your computer must be on the same network of the robot**
- Insert the IP Address in a browser, the default creadentials for the robot are username: "nao" and password: "nao", now you are connected to the robot settings interface.
- Connect to a WiFi network if you want to operate without cable, reboot, obtain the new robot-IP-Address.


## Run
In the python2 environment, **Run and follow the steps in the notebook [Dialogue-Pepper.ipynb](Dialogue-Pepper.ipynb)** <br>
#### Note
REMEMBER TO TURN ON THE SPEECH RECOGNITION SERVICE, in parallel with the notebook, with a shell in the speech-recognition folder.
If the folder is empty probably you didn't clone with the submodules commands. <br> 
Use python 2.7, or activate the Anaconda environment with: *conda activate python2* , and run the service in the folder:
```
python module_speechrecognition.py --pip <robot-IP-Address>
```
or, if you want to run the speech recognition service on the robot,
everything you need should already be installed, simply clone the pepperspeechrecognition folder to your robot, ssh into it and run:
```
python module_speechrecognition.py
```

## Test conversational engine
to run the conversational engine for manual tests execute the following command in a shell:
```
java -cp lib/Ab.jar Main bot=en
```

## Dependencies <a class="anchor" id="dependencies"></a>
The __Speech Recognition__ module was built to be able to run **ON** Robot computer (in the head) so, if you run it on your computer, it's only dependencies are:
* **Python 2.7** ,  because it uses
* [Pepper API (NAOqi SDK)](https://developer.softbankrobotics.com/pepper-naoqi-25/naoqi-developer-guide/naoqi-apis)
* **numpy**

The __Conversational Engine__ works with:
* **Java** (because no AIML-2.0 systems in Python 2 were found)

The __Speech Synthesis__ runs in the robot and works with:
* **Python 2.7** ,  because it uses
* [Pepper API (NAOqi SDK)](https://developer.softbankrobotics.com/pepper-naoqi-25/naoqi-developer-guide/naoqi-apis)

All of them are pre-installed on the robot, if you want to run on your computer the speech recognition just create an environment that has all them, the one created with Anaconda should be fine.

## Errors you might encounter
java.io.FileNotFoundException: Dialogue-Pepper-Robot/bots/en/aimlif/xyz.aiml.csv (No such file or directory)

(Ab.jar) is looking for .csv files, these should be generated **automatically** from the .aiml files in the "aimlif" folder. 
They are simply a faster less-readable copy of the originals. (so they are not included in the repo)

-simply create a folder "aimlif" next to the "aiml" one-

## Built With

* Python 2.7

## Changelog

**Version 1.0** - Initial release, 05 August 2020

## Authors

* **Igor Lirussi** @ KTH Royal Institute of Technology - Department of Robotics, Perception and Learning

## License

This project is licensed under a License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* Johannes Bramauer @ Vienna University of Technology - for the [PepperSpeechRecognition](https://github.com/JBramauer/pepperspeechrecognition)
* Anthony Zang (Uberi) and his [SpeechRecognition](https://github.com/Uberi/speech_recognition)
