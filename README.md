# Peillex Real Estate

This is the Capstone Project for the Web Application Development Program. This project was developed by Alexandre Marolleau, as a final step to complete the full program of EPFL Extension School.

The main goal of this project is to put into practice the knowledge I have acquired while completing the 4 courses included in the WAD program:

1. HTML and CSS
2. Interactive web pages
3. Introduction to Ruby on Rails
4. Dynamic web applications
The app has been deployed in Heroku to the following URL: https://chablais-property.herokuapp.com/.

## The "Peillex Real Estate " application

"Peillex Real Estate" was imagined like a redesign of an already existing real estate agency on the Chablais market. To give a new style with a very competitive market. The administrator can create accounts for agents who work in this agency and thus published news related to the real estate market or simply new mandates for the sale of houses or apartments.

## Application purpose

* **Targeted Audience**

  The consumers who will use this website, will be individuals who are in a project of research and / or purchase of house, apartment, or land. Users who wish to improve their quality life due to a work transfer, children, a wish for having more space, also for a new life project. This website will be published on internet, but only the agent as well as the administrator will be able to access the website tools. This will allow employees to modify and be autonomous, on the establishment of a real estate mandate.

* **Why it is needed and useful?**

  When a consumer is looking for a product or a service, his reflex is to get information via search engines. As mentioned earlier 80% of consumers look for information on the Internet before making a purchase.

  * A website allows you to inspire confidence and control your online communication.

  * The sustainability of your business depends on it you need customers and the Internet is an efficient way to generate them.

  * A website allows you to position yourself as an expert in your field of activity.

## Ruby & Rails Versions

  For this website there are several interactive elements.

  Currently the versions of my project are:

  * 2.6.7 for my Ruby version
  * 5.2.6 for my Rails version

## Main features and technologies involved

The application was developped using the following concepts and technologies:

### HTML & CSS

- HTML5
- CSS and SASS
- Atomic design

### JavaScript

- Vanilla JavaScript.
- External JS libraries ([Choices.js](https://jquery.com/)).

### Ruby on Rails

- Basic Ruby on Rails framework concepts (Models, Views, Controllers, Routes).
- Databases associations.
- Automated tests.
- Authentication and authorizations.
- Locales.
- Uploads and files management.
- Third party services integration (AWS, Heroku, APIs).

## Justified changes from the initial proposal

Currently the only modification made compared to the initial project is to add a filter section to the properties dashboard panel, without models, a filter which can sort by price, city.

Regarding the contact page I replaced it with the about page, currently the user who wishes to buy benefits from the announcement of the property of the name and surname plus phone and email address to contact the person in charge of this property.

## Challenges issues encountered

Here are two problems that I encountered that gave me a lot of thought and research the first was actually a simple error that I did not see directly the second was really complicated to find between the doubt of the problem of my application or by AWS.

### API google map

This is not a major modification of my application but a  but I had to use a "geocoder" gem for a problem with my google map API when I enter the address of a property she does not understand and generate me an error. I found no solution I was stuck for 2 days, the solution was to use the geocoder gem but my thought pattern was good and I persisted rather than using a gem, but in the end, there was a missing "=" before my parameter "<% = @ property.address.to_param%>" in the ifram from google map.


### (Excon :: Errors :: Forbidden (Expected (200) <=> Actual (403 Forbidden)

I also had a huge problem with AWS. My application was working fine, I could upload images without problem surprisingly when I wanted to change image or destroy a property an error appeared **(Excon :: Errors :: Forbidden (Expected (200) <=> Actual (403 Forbidden)** was an error related to Amazon and not my application.

I thought my AWS didn't have the rights so to access the bucket and edit or delete the content. So I modified the permissions of my bucket which was by default:

    "Action": "s3:GetObject",
                "Resource": "arn:aws:s3:::peillex-real-estate/*"

to =>

    "Action": [
        "s3:PutObjectAcl",
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObject"
    ],"Resource": "arn:aws:s3:::peillex-real-estate/*"

By doing several tries nothing worked so I looked for a lot of documentation on StackOverFlow but no help was used.

So I looked for another solution that maybe came not from my bucket but from my IAM user and then I noticed that my user had 3 policy attached to this one:

1. AWSCompromisedKeyQuarantineV2
2. AmazonS3FullAccess
3. AmazonAdministrator

I don't know when I attached this one, so I removed the Quarantine and Administrator policy and the image modifications as well as the destruction worked correctly so I suppose that the policies must have conflicted, but this problem caused me a lot of worries and also took a lot of time

### Action Mailer Send Grid

I use the currency gem which allows to confirm the creation of an account. This is mandatory and the users receive an email on his mailbox to click on a link.

I had disabled it at the beginning because I didn't understand how in production I could receive the confirmation email that I received in the development console.

I thought this was a very important feature on my site so I looked for a solution.

So in my folder App#models#Account : At the beginning of my file I put back the interaction with the currency gem by adding :confirmable.

With a lot of research I discovered that I could go through a mail platform communication system so I found SendGrids for free.

All I had to do was create an account with all the necessary information and security.

I had to add the necessary lines to config.action_mailer, such as the host output port, as well as the name of the email address that will send the email.

And define the actionMail in the environment with the name created in send Grids as well as the secret key assigned to it so that the project and SendGrids can work together.

## Future Implementation

  N.B : It is important to know that the duration of a real estate sale is a minimum of 3 months, between the loans with the bank, the negotiation with the two parties, and the signatures at the notary, not to mention the sales which can be canceled. This is why in terms of site management, it is easier to update based on sales unlike rental.

  In a real estate agency there are 2 parts of the job:

  1. The first is linked to the real estate transaction, which consists in developing the real estate market in a sector defined on the sale of house, apartment or land. It is therefore appropriate for the real estate agent to enter sales mandates. This part is related to the real estate sale. **This is one are implemented on my site**.

  Regarding the evolution of the site and future implementations, the rental part should be implemented.

  2. The rental part also consists in developing a sector by recovering rental mandates. The rental part is more complicated than the transaction, the tenants rent a property more quickly or leave it more quickly, this therefore generates more work on the advertisements published on the site and also the agent part who terminates the lease or the mandate. This is why this part is interesting implemented but later once the site is working properly with the sale.

  The part of my application that I am the most proud of is the property part, this was very difficult to set up, the fact that the properties are assigned to a user and that all the fields filled in plus the API map, then generate an advertisement with all the descriptions of the property and thus a simple and fast modification if there is a change in price on the mandate for example.
