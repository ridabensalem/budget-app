

# Creating Users
User.create(name: 'Rida Bensalem')
User.create(name: 'Jane Smith')

# Creating Groups
Group.create(name: 'Family', icon: 'family-icon', user_id: 1)
Group.create(name: 'Friends', icon: 'friends-icon', user_id: 2)

# Creating Entities
Entity.create(name: 'Vacation Fund', amount: 500, user_id: 1, group_id: 1)
Entity.create(name: 'Party Supplies', amount: 150, user_id: 2, group_id: 2)
