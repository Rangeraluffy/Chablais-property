# Capstone project proposal Peillex Property

Use the Markdown format to write and submit your project proposal.

_Markdown is a simple way to format plain text._  You can read [a detailed background about markdown here](https://daringfireball.net/projects/markdown/), and get [a quick reference and intro to markdown here](http://commonmark.org/help/).

Use the headings and notes below to guide your proposal.  Stick to these headings and include as much detail about what you want your project to do.

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

### 1. Navigation bar

 It will allow you navigate between several pages, so it will have links to :
 * **Home page** : Will therefore return to the home page from any pages.

 * **About** : Redirect to the about section where you can find out the Moynat Peillex property.

 * **Blog** : Allows you to learn about news related to the agency or the market, therefore to inform about external or internal events, on new laws related to real estate how to sell under the best conditions.
      1. Click on a article, redirect to the article that has been written. This also benefits from a button that sends to a new page with all the articles written from the beginning.

 * **Contact** : Allow visitors to send a contact form or information request with a summary of the agency's location networks.

 * **Log In** : Allows the administrator to log In, to create accounts for the agents who work in the company and to manage the site, also this one will have access to the creation of account.

    1. **Administrator Log In** :  Adds to the navigation bar after the administrator get log In, the log Out and a new possibility to create an account for a user.

* **Dashboard Admin** : The tab appears in the navigation bar once logged in, it sends to a dashboard page which has a navigation bar on the left side. The navigation bar on the left has two main parts:

    **1st part** : Linked to the website :
        * **Accounts** :  Link has a page that allows you to see all the accounts created and manage it.

        * **Blogs posts** : Link has a page that allows you to see all the posts  created (show, edit, destroy) and to create new posts by pressing the button.
          1. To create a new post, just fill in the defined fields and activate the post for it to appear.
            2. Fields to fill in (title, url, summary, body, image, active).

        * **Property** : Link has a page which allows to see all property created (show, edit, destroy) and to create property pressing the button.
          1. To create a property, just fill the fields.
              2. Fields to be filled (Name, address, price, rooms, bathrooms, bedrooms, m², garages, description, for sale, available, photo).

    **2nd part** : Linked to his account :
      * **My profile** : Link has a page that allows you to see the account with contact details, name, email.

      * **Edit account** : Update the informations related to the account (name, first name, email, telephone, details, password, password confirmation, image).

* **Dashboard Users (Real Estate Agent)** : The tab appears in the navigation bar once logged in, it sends to a dashboard page which has a navigation bar on the left side. The navigation bar on the left has two main parts :

    **1st part** : Linked to the website :

        * **Property** : Link has a page which allows to see all property created (show, edit, destroy) and to create property pressing the button.
          1. To create a property, just fill the fields.
              2. Fields to be filled (Name, address, price, rooms, bathrooms, bedrooms, m², garages, description, for sale, available, photo).

    **2nd part** : Linked to his account :

      * **My profile** : Link has a page that allows you to see the account with contact details, name, email.

      * **Edit account** : Update the informations related to the account (name, first name, email, telephone, details, password, password confirmation, image).

### 2. Home page :

This will have several sections:

  **1st section** : The latest properties that were created by agents.
  **2nd section** : Section information on Moynat Peillex Property but mainly on the market in Chablais.
  **3rd section** : A summary of all the teams members with their contact details.
  **4th section** : The latest news published on Blogs.

### 3. Footer :

The footer is divided into 4 parts :

  **1st parts** : Company section with legal notices.
  **2nd parts** : With the 3 agencies open on the Chablais with information related to it.
  **3rd parts** : With different languages in which the site can be translated.
  **4th parts** : Social media links.

## Data structures and models

**There will be 3 models :**

1. **Account**
  * The currency gem allows saved, memories, verify authentication
  * Upload photos of agents
  * Define first and last names
  * Properties created by agents

2. **Post**
  * Upload photos for blog
  * Define if the post is active
  * Display the publication time
  * Release by date

3. **Property**
  * Upload photos for properties
  * Define if the property is valued, sold, for sale, under offer
  * Release by date

## Third party services

Include a list of all third party services that you envisage using in your project.  For each one, indicate what they will be used for.  These include:

* Ruby gems or JavaScript libraries outside of those bundled with Ruby on Rails by default.
* CSS frameworks
* Third party APIs
* Deployment services, such as Heroku
