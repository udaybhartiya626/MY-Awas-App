# My Awas App

My Awas App is a comprehensive web-based platform designed to manage housing and property-related functionalities. The application allows users, dealers, and administrators to interact with various modules such as billing, complaints, and image uploads.

## Features

- **User Management**: Login for users, dealers, and administrators.
- **Complaint System**: Allows users to register complaints and view their status.
- **Billing System**: Users can view and submit bills.
- **Photo Upload**: A photo management system for users to upload property-related images.
- **Admin Tools**: Admins can manage bills, complaints, and dealer registrations.

## Project Structure

### HTML and JSP Files

The user interface components and forms for interacting with the system are implemented through HTML and JSP files. Some key files include:

- `userLogin.html`: User login page.
- `adminLogin.html`: Admin login page.
- `addBill.html`: Page to add a bill.
- `addComplaint.html`: Form to submit complaints.
- `viewBill.jsp`: Users can view their bills.
- `viewAdminComplaint.jsp`: Admin view of complaints made by users.

### Java Classes

Core backend logic is implemented using Java classes located in the `WEB-INF/classes/com/sagar/services` directory. Notable classes include:

- `UserLogin.java`: Handles user login functionality.
- `SubmitBill.java`: Manages the submission of user bills.
- `NewAawas.java`: Processes new housing applications.
- `AdminLogin.java`: Manages admin login and operations.
- `AddDealer.java`: Allows admins to add new dealers to the system.
- `ConnectDB.java`: Manages the database connection for the app.

### JavaScript Files

JavaScript enhances user interaction and handles client-side logic. Key JavaScript files are located in the `js` directory:

- `jquery.min.js`: jQuery library for DOM manipulation and event handling.
- `bootstrap.min.js`: Bootstrap's JavaScript for responsive design.
- `custom.js`: Custom JavaScript tailored to specific app functionalities.
- `Chart.js`, `rickshaw.js`: Libraries for data visualization and charting.

### CSS Stylesheets

Styles for the application are defined using CSS, found in the `css` directory. Key files include:

- `bootstrap.min.css`: Bootstrap styles for layout and components.
- `custom.css`: Custom styles to enhance the appearance of the app.

### Images

Images used within the app for UI and content are located in the `images` folder. Examples include:

- `logo.png`: Application logo.
- `pic1.png`, `pic2.png`: Sample property images for display purposes.

## Installation and Setup

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/your-username/My-Awas-App.git
    ```

2. Set up the database by creating the necessary tables as per the database schema.
3. Configure the `ConnectDB.java` file to point to your database instance.
4. Build and deploy the application using your preferred Java EE server (e.g., Apache Tomcat).

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript (Bootstrap, jQuery)
- **Backend**: Java, JSP
- **Database**: MySQL
- **Libraries**: Chart.js, Rickshaw.js, Bootstrap

## Contributing

Contributions are welcome! Please open an issue or submit a pull request to contribute.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
