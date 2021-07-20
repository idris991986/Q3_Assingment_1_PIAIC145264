pragma solidity ^0.8.0;

/*1) Create a first "ParentVehicle" contract that includes the following functions
start - returns String message” The Vehicle has just Started”
accelerate - returns String message” The Vehicle has just Accelerated”
stop -- returns String message” The Vehicle has just Stopped”
service- returns String message” The Vehicle is being serviced”
*/
contract ParentVehicle{

    function start() public returns(string memory){
        return "The Vehicle has just Started";
    }
    function accelerate() public returns(string memory){
        return "The Vehicle has just Accelerated";
    }
    function stop() public returns(string memory){
        return "The Vehicle has just Stopped";
    }
    function service() virtual public returns(string memory){
        return "The Vehicle has just Serviced";
    }
}
/*
2) Next Create following Child contracts for a different type of vehicles, that inherits Vehicle
Cars
Truck
MotorCycle,

(The contract shall override the Service Method to return, w Cars/ Truck/ Motor Cycle is being serviced)
*/
contract Car is ParentVehicle{
    function service() virtual override public returns(string memory){
        return "Car is being serviced";
    }    
}
contract Truck is ParentVehicle{
    function service() virtual override public returns(string memory){
        return "Truck is being serviced";
    }      
}
contract MotorCycle is ParentVehicle{
    function service() virtual override public returns(string memory){
        return "MotorCycle is being serviced";
    }      
}
/*
3) Then create smart contracts for “Alto Mehran, “ Hino, Yamaha, that may inherit the relevant smart contract(s) as in step 2.
*/
contract AltoMehran is Car{
    function service() override public returns(string memory){
        return "AltoMehran Car is being serviced";
    } 
}
contract Hino is Truck{
    function service() override public returns(string memory){
        return "Hino Truck is being serviced";
    } 
}
contract Yamaha is MotorCycle{
    function service() override public returns(string memory){
        return "Yamaha MotorCycle is being serviced";
    }       
}
/*
4)
Create 3 Service Stations for each vehicle type, with the same
function “vehicleService that takes the address of the deployed
contracts of step 3, in the “Vehicle” variable to call the service
function
*/
contract ServiceStation{
    function vehicleService(ParentVehicle _Vehicle) public returns (string memory){
        return _Vehicle.service();
    } 
}