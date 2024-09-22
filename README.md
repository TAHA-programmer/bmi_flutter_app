# BMI Flutter App
## Overview
The **BMI Flutter App** is a user-friendly mobile application designed to calculate and display the Body Mass Index (BMI) based on user inputs for age, weight, and height. This app aims to promote health awareness by providing users with an easy way to determine their BMI and understand their body weight category.

## Features
- **Intuitive Sliders**: Users can easily input their age, weight, and height using interactive sliders, allowing for quick and precise adjustments.
- **Real-time Calculation**: The app instantly calculates the BMI as the user adjusts the sliders, ensuring immediate feedback.
- **BMI Categories**: After calculating the BMI, the app categorizes it into four classifications:
  - Underweight
  - Normal weight
  - Overweight
  - Obesity
- **Visual Feedback**: The BMI result is displayed in a clear dialog box, making it easy for users to understand their status.
- **Clean User Interface**: The app features a minimalistic design with a focus on usability, ensuring a smooth and enjoyable experience.

## Technology Stack
- **Flutter**: The app is developed using Flutter, enabling cross-platform compatibility for both Android and iOS devices.
- **Dart**: The app's logic is implemented in Dart, providing a modern and efficient programming environment.

## How It Works
1. **Input Sliders**: Users adjust sliders for age, weight (in kg), and height (in cm).
2. **Calculation**: The app calculates the BMI using the formula:
   \[
   BMI = \frac{weight \, (kg)}{(height \, (m))^2}
   \]
   where height is converted from centimeters to meters.
3. **Result Display**: Upon pressing the "Calculate" button, the app displays the calculated BMI along with the corresponding category in a dialog.

## Future Enhancements
Future updates may include:
- User profile management to track BMI over time
- Health tips based on BMI category
- Integration with fitness APIs for personalized recommendations

