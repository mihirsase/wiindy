# Wiinsy

This is a flutter application for a demonstrating getx and unit tests. Weatherbit api's are used to get the required data

## Project Structure

- **.screens** : All the main screens for the app goes into this package
- **.controllers** : All business logic is inside these files
- **.components** : All reusable widgets are stored in this package
- **.models** : All the blueprint files for the app goes into this package
- **.repos** : All repository classes goes into this package
- **.services** : All classes which provides additional help goes in this package
- **.extensions** : Extensions on data types goes in this package

## Third party packages used in the project

- **get** : Used for state management, navigation and dependency injection
- **intl** : Used for date formatting
- **location + permission_handler** : Used to retrieve users current location
- **mockito** : Used for mocking api calls in unit tests