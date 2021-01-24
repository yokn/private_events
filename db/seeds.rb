# frozen_string_literal: true

User.create!([
               { username: 'admin' },
               { username: 'yokn' },
               { username: 'user3' },
               { username: 'Tom' },
               { username: 'DevOps ' },
               { username: 'Back-end' },
               { username: 'Front-end' }
             ])
Event.create!([
                { name: 'my new event!', date: '2021-02-06', location: 'my house', description: 'my description', user_id: 2, private: nil },
                { name: '', date: nil, location: '', description: '', user_id: 1, private: nil },
                { name: '1', date: nil, location: '', description: '', user_id: 1, private: nil },
                { name: '1', date: nil, location: '', description: '', user_id: 1, private: nil },
                { name: 'Birthday Party', date: '2021-01-23', location: "Bob's house", description: 'Bring gifts!', user_id: 1, private: nil },
                { name: 'test', date: '2020-12-29', location: '123a', description: '1', user_id: 1, private: nil },
                { name: '17', date: '2021-01-17', location: '17', description: '17', user_id: 2, private: nil },
                { name: 'Mars Oasis', date: '2026-03-14', location: 'Mars', description: 'A slightly bigger step.', user_id: 1, private: nil },
                { name: 'Comet Hale–Bopp', date: '4385-01-01', location: 'Human Memorial Hall', description: 'Comet passing near TERRA. Audience required. Please comply.', user_id: 1, private: nil },
                { name: 'Private event', date: '2021-01-30', location: 'localhost:3000', description: 'You may only attend this event if you were invited.', user_id: 1, private: 1 },
                { name: 'IT Meeting', date: '2021-01-25', location: 'Meeting room 2B', description: 'We will discuss what we did last week and set our targets for this week.', user_id: 1, private: 1 }
              ])
Attendance.create!([
                     { user_id: 2, event_id: 3 },
                     { user_id: 3, event_id: 3 },
                     { user_id: 1, event_id: 3 },
                     { user_id: 1, event_id: 13 },
                     { user_id: 1, event_id: 14 },
                     { user_id: 1, event_id: 15 },
                     { user_id: 1, event_id: 19 },
                     { user_id: 1, event_id: 22 },
                     { user_id: 2, event_id: 22 },
                     { user_id: 2, event_id: 25 },
                     { user_id: 2, event_id: 19 },
                     { user_id: 8, event_id: 19 },
                     { user_id: 8, event_id: 3 },
                     { user_id: 1, event_id: 27 },
                     { user_id: 1, event_id: 28 },
                     { user_id: 2, event_id: 27 },
                     { user_id: 8, event_id: 27 },
                     { user_id: 2, event_id: 28 },
                     { user_id: 3, event_id: 27 },
                     { user_id: 8, event_id: 28 },
                     { user_id: 1, event_id: 29 },
                     { user_id: 2, event_id: 29 },
                     { user_id: 1, event_id: 30 },
                     { user_id: 15, event_id: 30 },
                     { user_id: 14, event_id: 30 },
                     { user_id: 13, event_id: 30 }
                   ])
