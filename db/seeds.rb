# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: 'Benjamin', lastname: 'Perez', email: 'baperez@miuandes.cl', phone: '56990799660', password: 'ullnevergetthis', address: 'beuron 11955'}, { name: 'Fransisco', lastname: 'Alvarez', email: 'fealvarez@miuandes.cl', phone: '56995745660', password: 'igotthis', address: 'mirasol 115'}, { name: 'Sebastian', lastname: 'Piñera', email: 'spinera@uc.cl', phone: '594653770', password: 'ihazdamoneyz', address: 'san damian 11xxx'}, { name: 'Que', lastname: 'Agradable', email: 'sujeto@me.me', phone: '134521', password: 'suchpassword', address: 'much address 1337'}, { name: 'Ignacio', lastname: 'Carril', email: 'iacarril@miuandes.cl', phone: '56343634563', password: 'imsexyandiknowit', address: 'lo beltran 2207'}])

place = Place.create( name: 'molestararena', address: 'noonecares 1234', capacity: '1000000')

events = Event.create([
			{
				:name => 'lolopaloser',
				:description => 'GIMME ALL YER MONEYZ',
				:start_date => DateTime.parse("09/01/2019 19:00"),
				:place => place
			},
			{
				:name => 'elmer ecido',
				:description => 'mega',
				:start_date => DateTime.parse("05/01/2029 19:00"),
				:place => place
			},
			{
				:name => 'un evento divertido',
				:description => 'se nos acabo la creatividad',
				:start_date => DateTime.parse("02/01/2039 19:00"),
				:place => place
			}])

ticket_dict = []
transactions_list = []

ticket_types = [{name:'barato', price: 3000}, { name:'maomein', price: 10000}, {name:'terrilecaro', price: 90000}]

for ticket_type in ticket_types do
	i = 0
	for even in events do
		ticket_dict.push({type_description: ticket_type[:name], price: ticket_type[:price], event: even})
		
	end
end
tickets = Ticket.create(ticket_dict)

for ticket in tickets
	for use in users do
		transactions_list.push({user: use, ticket: ticket, time: DateTime.parse("02/01/2010 19:00") , paid: true})
	end
end
transactions = Transaction.create(transactions_list)

