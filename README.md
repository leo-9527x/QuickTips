# QuickTips App - Functional Specification

## 1. Purpose
The purpose of the QuickTips app is to provide a simple and intuitive tool to calculate tips. It targets general customers, especially those frequenting restaurants. The app will also allow users to split the bill, round up the total, and keep a record of past calculations.

## 2. Functional Requirements

### 2.1 Tip Calculation
The primary function of the app is to calculate tips. The user will input the total bill amount and choose the desired tip percentage. The app will then calculate the tip amount and display both the tip and the total bill including the tip.

### 2.2 Bill Splitting
The app will provide the functionality to split the bill among multiple people. The user can specify the number of people, and the app will divide the total bill (including the tip) evenly among them.

### 2.3 Round Up
The app will offer an optional feature to round up the total amount (bill + tip) to the nearest dollar. If this feature is selected, the app will adjust the tip amount accordingly.

### 2.4 Calculation History
The app will keep a history of past bills and tips. It will provide summary statistics, including the total sum for a week/month/year.

## 3. User Interface

### 3.1 Color Theme
The app will have a dark theme, and each button will have a fluorescent green border.

### 3.2 Layout
The interface will resemble a calculator, with digit buttons, a decimal point button, a clear (C) button, a split button, a round up button, and buttons for different tip percentages. There will also be an input field for the bill amount and the number of people (for bill splitting), and output fields for the calculated tip and total amount.

### 3.3 History
The history section will be accessible from the main screen. It will display a list of past calculations, with the most recent at the top. The user can select a calculation to view its details. It will also include summary statistics for different time periods.

## 4. Technology

The QuickTips app will be developed for iOS using Xcode.

## 5. Limitations

The current version of the app will only support calculations in USD. It won't include tax calculation, as it assumes that the user input already includes taxes.

This is a high-level functional specification, and it can be further detailed as we move to the design phase. For example, we would add wireframes or mockups of the user interface, and we could add more technical details such as the data model for the calculation history and the algorithms for the calculations.


