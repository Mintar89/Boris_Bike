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
```

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.




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