# 🛒  Sprints Assesment 

A fully functional **Shopping Mobile Application** built with **Flutter** and **Dart**, developed as part of the **Sprints Assessment Final Project**.  


## 📖 Project Overview

This project demonstrates the full lifecycle of mobile app development with Flutter — from Dart fundamentals to advanced UI, navigation, and localization.  

The app includes:
- A beautiful **welcome screen** with local and online images, styled text, and navigation buttons.  
- **Sign Up / Sign In** forms with validation and success dialogs.  
- **Smooth animated transitions** between pages.  
- A **Shopping Home Screen** with featured products, a responsive product grid, and hot offers.  
- **SnackBar feedback** for cart actions.  
- **Bonus Feature**: Complete Arabic localization using `.arb` files and `intl` package.  

This project is designed to simulate real-world mobile development workflows, emphasising **clean code**, **reusability**, and **best practices**.

## 🛠 Packages Used

- **email_validator** → Email validator doesn't only check for the presense of '@' in email string but also it makes sure that email is in the standard format: 'string@string.string'   
- **smooth_page_indicator** → Used it in home screen to apply page indicators just like sample UI provided.


## 📱 Features

### 1. Welcome Screen  
- AppBar with custom font (**Suwannaphum-Regular**).  
- Two images: one **local** and one **online** (retrieved from picsum).  
- Styled, centred text with bold and colour.  
- Buttons: **Sign Up** and **Sign In**.  

---

### 2. User Authentication  
#### Sign-Up Form:  
- Fields: Full Name (each name must be capitalised), Email (validated by **email_validator**), Password (≥6 chars), Confirm Password (match required).  
- Success: CupertinoDialog → “Account created successfully”.  

#### Sign-In Form:  
- Fields: Email & Password validation.  
- Success: CupertinoDialog → “Account sign-in successfully”.  

---

### 3. Smooth Transitions  
- Fade animation between Sign-Up/Sign-In and Home screen.  

---

### 4. Shopping Home Screen  
- AppBar: **Our Products**.  
- Horizontal **PageView**: Featured products.  
- Responsive **GridView**: Product cards with:  
  - Image  
  - Title  
  - Add to Cart (SnackBar confirmation).  
- **Hot Offers** section:  
  - Vertical scroll with `ListView.builder`.  
  - Image + description in each item.  

---

### 5. Bonus: Arabic Language Support  
- All strings translated:  
  - “Our Products” → “منتجاتنا”  
  - “Hot Offers” → “العروض الساخنة”  
  - Form labels and messages in Arabic.  
- Implemented with `.arb` files and `intl`.


## 📂 Project Structure



## Setup Instructions
#### 1: Clone the repository
- git clone https://github.com/markbassem67/Sprints_Assesment.git

#### 2: Install dependencies
- flutter pub get

#### 3: Run the app
- flutter run

## Screenshots
| Welcome Screen | Sign up screen | Sign in screen |
|--------------|--------------|--------------|
| ![Screenshot 1](https://github.com/user-attachments/assets/36256f5f-3a7a-4e36-bd5c-ef1b4ee3f8d9) | ![Screenshot 2](https://github.com/user-attachments/assets/4c376c24-9c13-4d48-b4db-4108a72ce89e) | <img width="1290" height="2796" alt="Simulator Screenshot - iPhone 16 Plus - 2025-08-23 at 00 52 23" src="https://github.com/user-attachments/assets/8097874c-bb57-467d-b316-182b76647a72" />

| Sign Up Validation in Action | Cupertino Alert Dialog after Successful Sign Up |
|------------------------------|-------------------------------------------------|
| ![Sign Up Validation](https://github.com/user-attachments/assets/47e2a83e-b90b-4b2a-b068-1a3c964420c9) | ![Cupertino Alert Dialog](https://github.com/user-attachments/assets/b6c98483-82ed-49a4-9628-7d03a9b01cd8) |


| sign in password < 6 chars | sign in empty fields |
|--------------|--------------|
| ![Screenshot 1](https://github.com/user-attachments/assets/50382305-2dc7-4eaf-863e-39c61325a042) | ![Screenshot 2](https://github.com/user-attachments/assets/88e320d0-58de-412c-be34-e5301b0d6acc) |



 





