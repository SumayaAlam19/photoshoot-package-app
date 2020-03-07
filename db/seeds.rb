

User.delete_all
Package.delete_all

users = [
    user1 = User.create(email: 'test-user1@photos.com', password: 'password'),
    user2 = User.create(email: 'test-user2@photos.com', password: 'password'),
    user3 = User.create(email: 'test-user3@photos.com', password: 'password'),
    user4 = User.create(email: 'test-user4@photos.com', password: 'password'),
    user5 = User.create(email: 'test-user5@photos.com', password: 'password')
    ]
    

    package = Package.create(name:"Signature Package", price: 500, hours: 7, notes:"There will be 4 photographers to cover the session and some props as well ", user_id: users[0].id)
    package = Package.create(name:"Extra Large Package", price: 400, hours: 6, notes:"There will be 3 photographers to cover the session and some props as well ", user_id: users[1].id)
    package = Package.create(name:"Large Package", price: 300, hours: 4, notes:"There will be 2 photographers to cover the session and some flowers as well ", user_id: users[2].id)
    package = Package.create(name:"Medium Package", price: 200, hours: 3, notes:"There will be 2 photographers to cover the session and no props", user_id: users[3].id)
    package = Package.create(name:"Small Package", price: 100.00, hours: 1, notes:"There will be 1 photographers to cover the session", user_id: users[4].id)