# Superheroes' Powers API

This is a Rails API backend for SuperHeroes' Powers project. It provides resources for the Hero and Power models.

## Pre-Requisites
In order to use this repository you will need the following:


- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rails `v7.0.4.3`**
- **Puma `v6.1`**

## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone git@github.com:Rukorio-Vanessa/superheroes-powers.git
   ```
   - Navigate to
       ```{shell}
     cd superheroes-powers
     ```

2. To install all the required gem for this project run:
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations and seed the data
   ```{shell}
   rake db:migrate db:seed
   ```
4. Run the application
    ```{shell}
    rails s
    ```
5. Open the application from your browser at local host:
    ```
   http://127.0.0.1:3000
   ```

 ##Project
 
The project contains three resources (Hero, Power, HeroPower) and has the following features:

- Heroes have many Powers through HeroPower
- Powers have many Heroes through HeroPower
- HeroPower belongs to a Hero and belongs to a Power
- It also contains models and migrations for the following database tables:

   - heroes
   - powers
   - hero_powers
   
 ## Routes

The API has the following routes with the following responses:

 ### GET/heros
 
     [
  {
    "id": 1,
    "name": "Karry Heller",
    "super_name": "Ultra Scarecrow Lord",
    "powers": []
  },
  {
    "id": 2,
    "name": "Malcolm Bradtke Sr.",
    "super_name": "Captain Deathstroke",
    "powers": []
  },...
 
 ### GET/heros/:id
 
   {
  "id": 1,
  "name": "Karry Heller",
  "super_name": "Ultra Scarecrow Lord",
  "powers": []
}
 
 ### GET/powers
 
    [
  {
    "id": 1,
    "name": "Resurrection",
    "description": "Accusantium quia cup."
  },
  {
    "id": 2,
    "name": "Sonic Scream",
    "description": "Ipsa in impedit. At ."
  },...
 
 ### GET/powers/:id
 
    {
  "id": 2,
  "name": "Sonic Scream",
  "description": "Ipsa in impedit. At ."
    }
 
 ### PATCH/powers/:id
 body:
  {
  "description": "the supposed ability to move objects by mental effort alone."
  }
  
  response:
     {
  "id": 36,
  "name": "Psychokinesis",
  "description": "the supposed ability to move objects by mental effort alone."
     }
   
 
 ### POST/heros_powers
  body:
    {
  "strength": 1,
  "power_id": 17,
  "hero_id": 3
     }
     
   response:
      {
  "id": 5,
  "hero": {
    "id": 3,
    "name": "Dario Haley DO",
    "super_name": "The Ben"
  },
  "power": {
    "id": 17,
    "name": "Radiation Immunity",
    "description": "Soluta sit accusamus."
  }
}
  
## LICENSE
This repository is distributed under the MIT License

 ## Author
This repository is created and maintained by:

- [Vanessa Rukorio](https://github.com/Rukorio-Vanessa)
