# Peillex Properties

This is the Capstone Project for the Web Application Development Program. This project was developed by Alexandre Marolleau, as a final step to complete the full program of EPFL Extension School.

## Project overview

Originally from **Haute-Savoie** between **Douvaine** and **Allinges**, I was able to **watch the evolution of the real estate market** over time. Haute-Savoie is well positioned in terms of property sales thanks to the purchasing power of cross-border commuters and the influence of *Switzerland* and its International Airport on the econmy of the department.

I worked for **2 years** in the company Moynat Peillex located in the center of Thonon-les-Bains. It is a family agency which aexits since **1861**. This company has a very good reputation thanks to its work and the time of establishment in this sector. Unfortunately, with time comes the change and the digitalisation/ The brand image of this company has taken a hit, when buyer is looking for a property, he goes through sites such as "**Leboncoin**" to take the first information and are then redirected to the website of the company.

For the French, real estate and digital technology are now inseparable: *more than 80% of buyers use online services or digital tools to complete their real estate purchase project*.

*article use :* [Seloger] (https://edito.seloger.com/actualites/france/80-des-francais-consultent-internet-avant-d-acheter-un-bien-immobilier-article-25439.html)

It was therefore important for me to renew this image brand by firstly passing through the agency's showcasing site. By adding new functionality and refreshing the design.

## Application purpose

* **Who will use the application?**

  The consumers who will use this website, will be individuals who are in a project of research and / or purchase of house, apartment, or land. Users who wish to improve their quality life due to a work transfer, children, a wish for having more space, also for a new life project. This website will be published on internet, but only the agent as well as the administrator will be able to access the website tools. This will allow employees to modify and be autonomous, on the establishment of a real estate mandate.

* **Why it is needed and useful?**

  When a consumer is looking for a product or a service, his reflex is to get information via search engines. As mentioned earlier 80% of consumers look for information on the Internet before making a purchase.

    * A website allows you to inspire confidence and control your online communication.

    * The sustainability of your business depends on it you need customers and the Internet is an efficient way to generate them.

    * A website allows you to position yourself as an expert in your field of activity.

## Front end

For this website there are several interactive elements.

Currently the versions of my project are:

* 2.6.3 for my Ruby version
* 5.2.6 for my Rails version

### 1. Navigation bar

 It will allow you navigate between several pages, so it will have links to :

 * **Home page** : Will therefore return to the home page from any pages.

 * **Properties** : Redirect to the about section where you can find out the Moynat Peillex property.

 **CSS Grid**
 *In the public view#properties this allows me to offer a distribution of space between the elements of an interface and to manage the responsibility*

 **Rails**
 *In the view#properties in this section that will show all the properties currently online, there will be the possibility to filter the properties by characteristic*

 * **Blog** : Allows you to learn about news related to the agency or the market, therefore to inform about external or internal events, on new laws related to real estate how to sell under the best conditions.

 **Gem Paginate**
 *In the view posts#show will benefit from the paginate gem*

  1) Click on a article, redirect to the article that has been written. This also benefits from a button that sends to a new page with all the articles written from the beginning.

 * **Contact** : Allow visitors to send a contact form or information request with a summary of the agency's location networks.

 * **Log In** : Allows the administrator to log In, to create accounts for the agents who work in the company and to manage the site, also this one will have access to the creation of account.

 * **Translation** : My application will be translated in English and possibility with French and Italian.

 **CSS Animation**
 *In the public view#main to the navigation bar, when the mouse will hover over a tab an animation will appear to give a feedback to the users*

    **1. Administrator Log In** :  Adds to the navigation bar after the administrator get log In, the log Out and a new possibility to create an account for a user.

* **Dashboard Admin** : The tab appears in the navigation bar once logged in, it sends to a dashboard page which has a navigation bar on the left side. The navigation bar on the left has two main parts:

    **1st part** : Linked to the website :

      **1) Accounts** :  Link has a page that allows you to see all the accounts created and manage it.

      **2) Blogs posts** : Link has a page that allows you to see all the posts  created (show, edit, destroy) and to create new posts by pressing the button.

        1) To create a new post, just fill in the defined fields and activate the post for it to appear.

        2) Fields to fill in (title, url, summary, body, image, active).

      **3) Property** : Link has a page which allows to see all property created (show, edit, destroy) and to create property pressing the button.

        1) To create a property, just fill the fields.

        2) Fields to be filled (Name, address, price, rooms, bathrooms, bedrooms, m², garages, description, for sale, available, photo).

    **2nd part** : Linked to his account :

      **1) My profile** : Link has a page that allows you to see the account with contact details, name, email.

      **2) Edit account** : Update the informations related to the account (name, first name, email, telephone, details, password, password confirmation, image).

* **Dashboard Users (Real Estate Agent)** : The tab appears in the navigation bar once logged in, it sends to a dashboard page which has a navigation bar on the left side. The navigation bar on the left has two main parts :

    **1st part** : Linked to the website :

      **1) Property** : Link has a page which allows to see all property created (show, edit, destroy) and to create property pressing the button.

      1) To create a property, just fill the fields.

      2) Fields to be filled (Name, address, price, rooms, bathrooms, bedrooms, m², garages, description, for sale, available, photo).

    **2nd part** : Linked to his account :

      **1) My profile** : Link has a page that allows you to see the account with contact details, name, email.

      **2) Edit account** : Update the informations related to the account (name, first name, email, telephone, details, password, password confirmation, image).

### 2. Home page :

**Javascript for carousel**
*In the public#main view for the main page banner I will add a carousel that will switch different images, to make the page more dynamic.*

This will have several sections :

  **1st section** : The latest properties that were created by agents.

  **CSS Hover**
  *In the public#main view for the propeties will benefit from css to animate the fact of hovering the mouse over an image to obtain additional information*

  **2nd section** : Section information on Moynat Peillex Property but mainly on the market in Chablais.

  **3rd section** : A summary of all the teams members with their contact details.

  **Javascript for carousel**
  *In the public#main view for the section agent I will add a carousel that will switch different agent, to make the page more dynamic.*

  **CSS Hover for team**
  *In the public#main view for the section agent I will add hover agent that will animate this section, to make the page more dynamic.*

  **4th section** : The latest news published on Blogs.

  **Javascript for carousel**
  *In the public#main view for the main page banner I will add a carousel that will switch different images, to make the page more dynamic.*

### 3. Footer :

The footer is divided into 4 parts :

  **1st parts** : Company section with legal notices.

  **2nd parts** : With the 3 agencies open on the Chablais with information related to it.

  **3rd parts** : With different languages in which the site can be translated.

  **4th parts** : Social media links.

**CSS Animation**
*In the public view#main to the footer it, when the mouse will hover over a tab an animation will appear to give a feedback to the users*

## Data structures and models

**There will be 3 models :**

1. **Users**

  **Associations :**

  1) mount_uploader :image, ProfilePictureUploader
  2) has_many :properties
  3) has_secure_password

  **Attributes :**

  * First name
  * Last name
  * Email
  * Image
  * Company
  * Telephone

2. **Posts**

  **Associations:**

  * mount_uploader :image, PhotoUploader

  * scope :active
  * scope :latest

  **Attributes :**

  * Title
  * Url
  * Summary
  * Body
  * Image
  * Created at

3. **Properties**

  **Associations :**

  1) mount_uploader :photo, PhotoUploader
  2) belongs_to :account

  * scope :latest
  * scope :sold
  * scope :for_sale
  * scope :offer
  * scope :estimate

  **Attributes :**

  * Name
  * Adress
  * Price
  * Body
  * Rooms
  * Bathrooms
  * Bedrooms
  * Area
  * Garages
  * Photo

3. **Filter**

  **Associations :**

  1) has_many :properties

  **Attributes :**

  * scope :price
  * scope :area
  * scope :bedrooms
  * scope :adress

## Third party services

Include a list of all third party services that you envisage using in your project.  For each one, indicate what they will be used for.  These include:

* Ruby gems or JavaScript libraries outside of those bundled with Ruby on Rails by default.

  * Gem **'devise'** Devise is a flexible authentication solution for rails:

    * Confirmable: sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in. Which will therefore validate the account of the agent in question.

    * Lockable: locks an account after a specified number of failed sign-in attempts. Can unlock via email or after a specified time period. To make sure that someone from the outside is trying to get into the company system.

  * Gem **'sass'**  Files can be carefully organized into subfolders based on areas of concern, such as typography, form entries, and grid system. The advantage is that our Rails application will compile all the Sass together automatically to produce a single application file.css, which can be included in our application views.

  * Gem **'figaro'** I require figaro gem for my information storage to the AWS service and my application.yml this information is very sensitive. Anyone who obtains this data will have all the privileges that come with it. So I need a way to have this information only in my local repository. Because if I push it to the remote repository, it will be available to anyone who has read privilege.

  * Gem **'bcrypt'** Since it is a website that requires user accounts linked to the agency it is therefore confidential data and having access to the administrator account would allow to completely destroy the site. The security and privacy of users in applications is of great importance.

  * Gem **'mini_magick'** My site uses a lot of images and resources thanks to the mini-magick gem so I can resize them to save space and faster download for my users.

  * Gem **'Carrierwave'** I used it to manage image uploads, since my site mainly requires images to represent the ad, this is the first thing potential buyers see, also the agent information all requires a profile picture.

  * Gem **'fog'** If I use **'carrierwave gem'** I need the 'fog' gem to be able to communicate with Amazon S3.

  * Gem **'webpacker'** Webpker makes it easy to use JavaScript pre-processor and bundler to manage application-like JavaScript in Rails.

  * Gem **'Capybara'** I use this gem, to facilitate the automatic testing phase, to test my application in these entrenchments and tested the features.

  * Gem **'Kaminari'** I use this gem, to facilitate the automatic testing phase, to test my application in these entrenchments and tested the features. And also allow me in the show#properties to paginate properties to avoid having too many properties on a single page

  * Gem **'Geocoder'** I would used the gem geocoder as i needed for all properties, when a agent property or the administrator create a new home it must be added the address of the property and the google map will located the position of the house. This allows the buyers to see where the house is located and if it corresponds to their research areas.

* CSS frameworks :

  **Boostrap** Will more easily to design my website with all section and container and for the responsiveness website.

* Third party APIs

  **Google maap** To locate all properties create with address.

  **Amazon Web services** Stocking all images uploading by users in one bucket.

* Deployment services

  **Heroku**
