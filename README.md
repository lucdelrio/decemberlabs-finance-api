# Decemberlabs finance api

[![Maintainability](https://api.codeclimate.com/v1/badges/a650eaf8d956f34792ca/maintainability)](https://codeclimate.com/github/lucdelrio/decemberlabs-finance-api/maintainability)

## Ruby version

* 2.6.1

## Database creation

   * Using postgres v11.2 SQL database
    
   * create role decemberlabs with superuser;

   * rails db:setup

## Postman collection to test the API

   * https://www.getpostman.com/collections/50af055c1a4cabfe3d50

## Limitations and improvements

The API should have test for models and controllers.
The tests must include validations for transfers like: amount limits, checks if the user exists or select a bank account.

In my opinion a good imprevement is that the transfer should be made between bank accounts with the same currency type( for example: bank account with dolars transfer to banck account in with dolars)
