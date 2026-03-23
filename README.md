# URBAN-BITE

﻿# Food-Ordering-App
 ### URBAN-BITE 

"Delivering code like you deliver food – hot, fast, and reliable!. Built with Spring Boot, MySQL, REST APIs, and Spring Data JPA — this project replaces verbose JDBC/Servlet code with powerful annotations like @RestController, @Autowired, @Repository, and @Entity, enabling faster development, better layering, and seamless database interaction."

Project is implemented using ReactJS (Hooks) library and Java Spring Boot framework Spring Data Jpa, Spring Secuirty with JSON Web token, REST API) with some additional libraries (Bootstrap, AXIOS, Sweetalert, Redux and few more).

### Project specification

The main purpose of the application is to enable users to view restaurant menu, place food orders, then track the status of their orders, which can be updated by employees. The system consists of three user roles with specific capabilities:
- ADMIN
- EMPLOYEE
- USER

The application can also be accessed by unregistered users, who have the following abilities:
- Register an account
- Browse the menu, select a type of the meal, and view the complete offerings within that type
- Specify quantities and then add items to the cart
- Confirm the final order by inserting their address and phone number
- After successfully placing the final order, users will receive a message containing a link to track the status of their order

Registered users with the *USER* role can log into the system using their username and password. They have the following abilities:
- Update their personal information
- Order food similar to unregistered users, but without the need to enter their address and phone number since their data is already saved in the database.
- Receive a 10% discount on every order
- View their active orders (with *ORDERED* and *IN PREPARATION* status)
- View the history of their orders (with *IN DELIVERY* status)

Users with the *EMPLOYEE* role have the following abilities:
- Review all incoming orders and change their status to *IN PREPARATION* or *IN DELIVERY*, depending on whether the orders are being prepared or in the process of delivery.
- View the history of all orders.

Users with the *ADMIN* role have the following abilities:
- Create, delete (logically) and update meal types in the database (including uploading images)
- Create, delete (logically) and update meals (including uploading images)
- Logically delete users (change their isDeleted status, their data remains in the database)
- View active final orders
- Delete final orders and all their ordered items from the database
- View the order history
- Create, delete, and update employee data (users with the *EMPLOYEE* role)

Application has fully responsive design for users who order the food.

### Application UI preview:
Login component shows when the app starts.

![image](https://github.com/user-attachments/assets/3d0c400a-20c9-42a8-9417-7e4e22ba51f6)

Registration (unregistered users can sign up and they will have 10% off on every order)

![Screenshot 2025-04-24 220109](https://github.com/user-attachments/assets/d1abf609-24ca-44f1-a5a5-273318d56606)

Validation and alert if username already exists in the database.

![image](https://github.com/user-attachments/assets/c853661c-3a41-4189-87a9-334f29000eca)

Validation and alert if email already exists in the database

![Screenshot 2025-04-24 220550](https://github.com/user-attachments/assets/ab2d1f06-43a7-442f-b4f3-3e47fc4ce0b6)

Logged-in users can access their profile page where they edit profile or change password if necessary.

![image](https://github.com/user-attachments/assets/7f3ba5bc-da60-47e6-8e45-8e18ecb72b65)

Edit profile

![image](https://github.com/user-attachments/assets/129849f2-73e4-45fe-8111-ef6dedb986a2)

When user wants to change password, he needs to insert old password as well.

![image](https://github.com/user-attachments/assets/61fb0925-bc8a-4c15-9fdd-89fec14e128e)

If inserted old password and password from the database don't match, he won't be allowed to save new password.

![image](https://github.com/user-attachments/assets/1acf161c-0158-41f8-b92d-e799ba8a9810)

If they match, new password will be saved successfully (will be encripted and saved in the database

![image](https://github.com/user-attachments/assets/fdffdf85-7814-446c-a828-6ae461d19b1c)

Users first need to select the specific category, then they can see complete offers for that category.

![image](https://github.com/user-attachments/assets/1fff02cf-3b0c-40a4-be1a-ad25901f1d67)

After choosing category (meal type), available meals (offers) will be listed.

![image](https://github.com/user-attachments/assets/e7911762-5626-4277-81a9-53654bf9970a)

Users can add items (meals) to the cart after they specify quantity. Default and minimum value for quantity is 1 and users can't go below that value. After clicking on Confirm button, item is successfully added to the cart.

![image](https://github.com/user-attachments/assets/653dbf6c-8df3-46bc-9b26-245ad24c19b7)

Page where items are added to cart

![image](https://github.com/user-attachments/assets/e06df569-599e-4855-888c-f5275c51e044)

Clicking on the cart button or icon in the navigation, users can see items from the cart.

![image](https://github.com/user-attachments/assets/b6ee8e00-6263-4580-bdf2-5ca0cfe10cf0)

Users that are not logged-in, need to insert details such as address and phone number.

![image](https://github.com/user-attachments/assets/2e0ec07e-7fb9-4b01-814d-f947574a73cd)

Without inserting details, not logged-in users can't confirm the final order

![image](https://github.com/user-attachments/assets/35ce9400-098b-4b81-949e-aa724bf72509)

Validation if inserted phone number is a number or it has less than 5 digits

![image](https://github.com/user-attachments/assets/6371fe05-9e02-4d8f-a391-a3ff77e7986c)

After valid input, final order will be confirmed and not logged-in users can track their order status clicking on the link.

![image](https://github.com/user-attachments/assets/54719ccb-d916-4c86-b349-f8bb9309443c)

![image](https://github.com/user-attachments/assets/abb7311b-986c-4a22-8b69-c60f554ea9d8)

![image](https://github.com/user-attachments/assets/db880f32-be64-484a-a07e-e35dcfea1f70)

Clicking on Show items button, user can see all items from the (final) order that he ordered.

![image](https://github.com/user-attachments/assets/64a00c32-a2e7-4191-8cd6-41ef89749a1e)

![image](https://github.com/user-attachments/assets/4ffa8944-7ff0-4b2a-92b2-03e022ff1292)

Logged-in users get 10% discount on the final price of their order. Also they don't need to insert details, such as address and phone number, because it's stored in the database after registration. Logged-in users also have more tabs and options.

![image](https://github.com/user-attachments/assets/40d192d7-7abd-4636-b6bd-051bf58dfdc2)

Clicking on Show items button, user can see his ordered items

![image](https://github.com/user-attachments/assets/b61125bd-5373-48c1-b01a-aaea38f15a57)

![image](https://github.com/user-attachments/assets/28bb2654-6ce6-4957-a7e2-2ac13834f275)

Admin have option to delete final order and all its ordered items from the database, but he doesn't have an option to change status as employee can do (same component shows for both roles, but they don't have same available actions).

![image](https://github.com/user-attachments/assets/e4ec7f87-1d40-497a-ac5e-eea68772c0c0)

![image](https://github.com/user-attachments/assets/fb6ff8fa-9b51-4253-acbe-23339aae9854)

Employee can see and change status of the final order depending on real status of the order, which user can track (but they can't delete them as Admin can do).

![image](https://github.com/user-attachments/assets/ae3312c9-7f2c-4d0c-b28a-b2c484a32738)

Clicking on Show items button, employee can see all items from the (final) order.

![image](https://github.com/user-attachments/assets/4724cb81-9ef9-4487-aee2-eab4814718db)

All orders with status IN DELIVERY are placed in order history, they aren't considered active anymore

![image](https://github.com/user-attachments/assets/d76bfa7d-f1c8-4918-820f-8744af0c33b8)


