Boris Bikes, build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required. 

### User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```

```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked


### User Stories Table Representation

| Objects            | Messages          |
| ------------------ | ----------------- |
| Person             |                   |
| Bike               | working?          |
| DockingStation     | release_bike      |
| DockingStation     | dock              |


### User Stories Diagram

Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
DockingStation <-- dock <-- Bike