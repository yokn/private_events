# frozen_string_literal: true

User.create!([
               { username: 'admin' },
               { username: 'yokn' },
               { username: 'user3' },
               { username: 'Tom' },
               { username: 'DevOps ' },
               { username: 'Back-end' },
               { username: 'Front-end' },
               { username: 'change' }
             ])
Event.create!([
                { name: 'my new event!', date: '2021-02-06', location: 'my house', description: 'my description', user_id: 2, private: 0 },
                { name: 'Birthday Party', date: '2021-01-29', location: "Bob's house", description: 'Bring gifts!', user_id: 1, private: 0 },
                { name: 'test', date: '2021-12-29', location: '123a', description: '1', user_id: 1, private: 0 },
                { name: '17', date: '2021-01-27', location: '17', description: '17', user_id: 2, private: 0 },
                { name: 'Mars Oasis', date: '2026-03-14', location: 'Mars', description: 'A slightly bigger step.', user_id: 1, private: 0 },
                { name: 'Comet Hale–Bopp', date: '4385-01-01', location: 'Human Memorial Hall', description: 'Comet passing near TERRA. Audience required. Please comply.', user_id: 1, private: 0 },
                { name: 'Private event', date: '2021-01-30', location: 'localhost:3000', description: 'You may only attend this event if you were invited.', user_id: 1, private: 1 },
                { name: 'IT Meeting', date: '2021-01-25', location: 'Meeting room 2B', description: 'We will discuss what we did last week and set our targets for this week.', user_id: 1, private: 1 }
              ])
