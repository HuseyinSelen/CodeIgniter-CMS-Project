# CodeIgniter CMS Project

![CodeIgniter](https://codeigniter.com/assets/images/ci-logo.png)

## 📖 About the Project
This project is a **Content Management System (CMS)** built using the **CodeIgniter PHP framework**. It allows administrators to manage website content efficiently through a user-friendly dashboard. Updates made in the CMS can be viewed directly on the website in real-time.

## 🚀 Features
- Developed with MVC architecture
- User management (login, registration, password reset)
- Content management (create, edit, delete pages and posts)
- Database operations (CRUD)
- SEO-friendly URL structure
- Security measures (CSRF protection, XSS filtering)
- Real-time website updates via the CMS panel

## 🛠️ Technologies Used
- **Backend:** PHP, CodeIgniter
- **Frontend:** HTML, CSS, JavaScript
- **Database:** MySQL  
- **Others:** Bootstrap, jQuery

## 📦 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/HuseyinSelen/codeigniter.git

2. Navigate to the project directory:
   cd codeigniter
   
3. Configure the config/config.php and config/database.php files:
   $config['base_url'] = 'http://localhost/cms/panel/';
   $db['default'] = array(
	'dsn'	=> '',
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => '',
	'database' => 'cms',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'production'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => FALSE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);
you need to do this for the site and panel folders  

4. Create your database and import the database.sql file.
   
5. Start the server (Wamp):

6. Open in your browser:
   http://localhost/cms/panel or http://localhost/cms/site

## ❗ Important!
Please make sure that php and VS Code versions are compatible.

🎯 Contributing
If you would like to contribute to this project, feel free to submit a pull request or open an issue. 🎉

📜 License
This project is licensed under the MIT License.




