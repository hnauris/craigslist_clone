# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#First looks to see if there already is a cetegory with name community. If not, the mnakes it
community_category = Category.where(name: 'community').first_or_create(name: 'community')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
services_category = Category.where(name: 'services').first_or_create(name: 'services')
forsale_category = Category.where(name: 'for_sale').first_or_create(name: 'for_sale')


Subcategory.where(name: 'activities', category_id: community_category.id ).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id ).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id ).first_or_create(name: 'events', category_id: community_category.id)

Subcategory.where(name: 'houses', category_id: housing_category.id ).first_or_create(name: 'houses', category_id: housing_category.id)
Subcategory.where(name: 'farms', category_id: housing_category.id ).first_or_create(name: 'farms', category_id: housing_category.id)
Subcategory.where(name: 'flats', category_id: housing_category.id ).first_or_create(name: 'flats', category_id: housing_category.id)
Subcategory.where(name: 'cottages', category_id: housing_category.id ).first_or_create(name: 'cottages', category_id: housing_category.id)

Subcategory.where(name: 'mechanics', category_id: jobs_category.id ).first_or_create(name: 'mechanics', category_id: jobs_category.id)
Subcategory.where(name: 'doctors', category_id: jobs_category.id ).first_or_create(name: 'doctors', category_id: jobs_category.id)
Subcategory.where(name: 'workers', category_id: jobs_category.id ).first_or_create(name: 'workers', category_id: jobs_category.id)
Subcategory.where(name: 'salesmen', category_id: jobs_category.id ).first_or_create(name: 'salesmen', category_id: jobs_category.id)
Subcategory.where(name: 'artists', category_id: jobs_category.id ).first_or_create(name: 'artists', category_id: jobs_category.id)
Subcategory.where(name: 'programmers', category_id: jobs_category.id ).first_or_create(name: 'programmers', category_id: jobs_category.id)


Subcategory.where(name: 'w4w', category_id: personals_category.id ).first_or_create(name: 'w4w', category_id: personals_category.id)
Subcategory.where(name: 'w4m', category_id: personals_category.id ).first_or_create(name: 'w4m', category_id: personals_category.id)
Subcategory.where(name: 'm4m', category_id: personals_category.id ).first_or_create(name: 'm4m', category_id: personals_category.id)
Subcategory.where(name: 'm4w', category_id: personals_category.id ).first_or_create(name: 'm4w', category_id: personals_category.id)
Subcategory.where(name: 'random', category_id: personals_category.id ).first_or_create(name: 'random', category_id: personals_category.id)

Subcategory.where(name: 'cleaning', category_id: services_category.id ).first_or_create(name: 'cleaning', category_id: services_category.id)
Subcategory.where(name: 'cooking', category_id: services_category.id ).first_or_create(name: 'cooking', category_id: services_category.id)
Subcategory.where(name: 'washing', category_id: services_category.id ).first_or_create(name: 'washing', category_id: services_category.id)
Subcategory.where(name: 'fixing', category_id: services_category.id ).first_or_create(name: 'fixing', category_id: services_category.id)
Subcategory.where(name: 'plumming', category_id: services_category.id ).first_or_create(name: 'plumming', category_id: services_category.id)
Subcategory.where(name: 'painting', category_id: services_category.id ).first_or_create(name: 'painting', category_id: services_category.id)

Subcategory.where(name: 'cars', category_id: forsale_category.id ).first_or_create(name: 'cars', category_id: forsale_category.id)
Subcategory.where(name: 'dishwashers', category_id: forsale_category.id ).first_or_create(name: 'dishwashers', category_id: forsale_category.id)
Subcategory.where(name: 'bikes', category_id: forsale_category.id ).first_or_create(name: 'bikes', category_id: forsale_category.id)
Subcategory.where(name: 'boats', category_id: forsale_category.id ).first_or_create(name: 'boats', category_id: forsale_category.id)
Subcategory.where(name: 'computers', category_id: forsale_category.id ).first_or_create(name: 'computers', category_id: forsale_category.id)
Subcategory.where(name: 'stoves', category_id: forsale_category.id ).first_or_create(name: 'stoves', category_id: forsale_category.id)
Subcategory.where(name: 'shoes', category_id: forsale_category.id ).first_or_create(name: 'shoes', category_id: forsale_category.id)
Subcategory.where(name: 'dishes', category_id: forsale_category.id ).first_or_create(name: 'dishes', category_id: forsale_category.id)
Subcategory.where(name: 'food', category_id: forsale_category.id ).first_or_create(name: 'food', category_id: forsale_category.id)
