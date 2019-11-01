# Welcome to Flatville

## Objectives

1. Gain proficiency instanstiating a class.
2. Ability to discern when to use `attr_reader`, `attr_writer`, or `attr_accessor`.
3. Ability to understand relationships between models.
4. Practice using higher-level enumerators.

## Introduction

Welcome to Flat-ville, a command line interface (CLI) application that allows its users to create farmers and farms and keep animal on those famrms! To build your Flat-ville world, you will first need to complete the code. This application consists of three models: Farmer, Farm, and Animal. Please build out the deliverables below to get your application up and running!

A `Farmer` can own many different farms, and a `Farm` can have many different `Animal`s. An `Animal` can exist without a `Farm` and be assigned a farm later; however, a `Farm` cannot exist (or be instantiated) without an owner (`Farmer`).

## Deliverables

### Farmer

+ Each `Farmer` instance should initialize with a name that can be changed.
+ A `Farmer` instance should be able to return its name.

### Farm

+ A `Farm` should be instantiated with a `name`, an `owner`, and a `type`.
+ The name or type cannot be changed later, but the owner can.
+ A `Farm` should be able to return its name.

### Animal

+ An `Animal` should be instantiated with a species and optionally a name.
+ That animal's name and species cannot be changed.
