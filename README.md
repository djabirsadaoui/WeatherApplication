# WeatherApplication
WeatherApplication is an iOS weather app developed in Swift 4.2, it shows the current and forcast weather informations of the city of your choise.  

## Screen shot
![img1](./images/img3.PNG?raw=true "Cities")
![img2](./images/img2.PNG?raw=true "Add city")
![img3](./images/img1.PNG?raw=true "Weather")

## Clean Swift architecture
In an MVC project, your code is organized around and grouped by models, views, and controllers. In Clean Swift, your project structure is built around use case. In other words, we will have a set of components for each use case.
### Communication
The communication between the components is done with protocols. Each component will contain protocols which will be used for receiving and passing data between them. Worker communicates with Interactor, then Interactor with Presenter and Presenter with ViewController.

![cleanArchi](./images/clean_architecture.png)
### Router
### Worker
### Interactor
### Presenter
### ViewController


