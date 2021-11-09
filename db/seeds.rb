# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
admin = Account.create!(
                        first_name: 'Admin',
                        last_name: 'Admin',
                        email: 'admin@peillex.com',
                        password: '123456',
                        password_confirmation: '123456',
                        admin: 'true'
                      )
alexandre = Account.create!(
                        first_name: 'Alexandre',
                        last_name: 'Marolleau',
                        email: 'alexandre@peillex.com',
                        password: '123456',
                        password_confirmation: '123456',
                      )
vincent = Account.create!(
                        first_name: 'Vincent',
                        last_name: 'Dumas',
                        email: 'vincent@peillex.com',
                        password: '123456',
                        password_confirmation: '123456',
                      )
laure = Account.create!(
                        first_name: 'Laure',
                        last_name: 'Peilex',
                        email: 'laure@peillex.com',
                        password: '123456',
                        password_confirmation: '123456',
                      )
steven = Account.create!(
                        first_name: 'Steven',
                        last_name: 'Verite',
                        email: 'steven@peillex.com',
                        password: '123456',
                        password_confirmation: '123456',
                      )
marie = Account.create!(
                        first_name: 'Marie',
                        last_name: 'Favre',
                        email: 'marie@peillex.com',
                        password: '123456',
                        password_confirmation: '123456',
                      )

# post
post1 = Post.create(title: 'New agency opening',
                  url: 'Opening Domaine de coudrée',
                  summary: 'AC PROPERTY represents the “Luxury” branch of the PEILLEX IMMOBILIER group.',
                  body: 'The AC PROPERTY Agency is a real estate agency specializing in prestigious real estate, mainly located in the Lemanique sector but capable of reaching further afield as opportunities arise. The agency will open on November 25, 2021.'
                 )

post2 = Post.create(title: 'Rental investment',
                    url: 'Law Pinel',
                    summary: 'For acquisitions or constructions of new housing',
                    body: 'from January 1, 2023, the tax reduction will in fact drop from 12% to 10.5% if the lessor undertakes to rent the property for 6 years, from 18% to 15% for a 9-year rental and 21% to 17.5% for a 12-year commitment.

                    From 2024, the tax benefit will increase to 9% for a 6-year rental, 12% for a 9-year rental and 14% for a 12-year commitment.'
                   )

post3 = Post.create(title: 'Energy renovation',
                    url: 'Measures for energy renovation and the environment',
                    summary: ' This financial assistance dedicated to the energy renovation of housing',
                    body: 'Is now available to all owner-occupiers, landlords and condominiums until December 31, 2022, without means-testing. It is granted for certain works and expenses.

                    Between January 1, 2021 and December 31, 2021, the beneficiary can submit a request for a premium even if the work has started from October 1, 2020 (a signed estimate must prove this).'
                   )

post4 = Post.create(title: 'Finance Law',
                    url: 'Accommodation adaptation',
                    summary: 'The finance law for 2021',
                    body: 'Extends for three years, i.e. until December 31, 2023, the tax credit for equipment expenses for the main home in favor of personal assistance and housing accessibility. .'
                   )



# Property
# property1 = Property.create!(
#                       name: 'House',
#                       address: 'Thonon-les-bains',
#                       price: '485000',
#                       rooms: '5',
#                       bathrooms: '2',
#                       bedrooms: '2',
#                       area: '152',
#                       garages: '2',
#                       details: 'test',
#                       photo: 'https://panampost.com/wp-content/uploads/web_dsc00653_big_ce.jpg',
#                             )
