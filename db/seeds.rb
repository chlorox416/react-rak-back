User.destroy_all
Kindness.destroy_all
UserKindness.destroy_all



users = [{name: "Chloe", phone_number: "6268083997"}]

kindnesses = [{act: "Read a book.", category: "self"},
{act: "Treat yourself to a dessert.", category: "self"},
{act: "Buy some flowers.", category: "self"},
{act: "Go for a walk.", category: "self"},
{act: "Explore new neighborhood.", category: "self"},
{act: "Get a massage.", category: "self"},
{act: "Take a nap.", category: "self"},
{act: "Get dinner with yourself.", category: "self"},
{act: "Tell yourself (while looking at your own reflection), 'I love you!'", category: "self"},
{act: "Donate clothes to charity.", category: "self"},
{act: "Name 3 things you're appreciative of.", category: "self"},
{act: "Be accountable - get there on time.", category: "self"},
{act: "Take out the trash - literally and metaphorically.", category: "self"},

{act: "Don't keep them waiting - be on time.", category: "friend"},
{act: "Tell a friend what you love about them.", category: "friend"},
{act: "Call a friend just to say hello", category: "friend"},
{act: "Attend an event, such as a dance recital or sporting event, of a friend’s child.", category: "friend"},
{act: "Send a message to a friend, letting them know you appreciate them.", category: "friend"},
{act: "Reconnect with an old friend you’ve lost touch with over the years. Share a memory you carry with you.", category: "friend"},
{act: "Donate to a friend’s favorite charity in their name.", category: "friend"},
{act: "Give a friend a book you think they would like.", category: "friend"},
{act: "Send a friend a helpful or inspiring article that made you think of them.", category: "friend"},
{act: "Figure out a friend or family member’s half birthday (six months from their full birthday) and surprise them with a little treat on that day.", category: "friend"},
{act: "Invite a friend out to dinner", category: "friend"},
{act: "Venmo a friend $5 dollars for a morning treat", category: "friend"},

{act: "Call your mom or dad just to say I love you.", category: "family"},
{act: "Send a message to a family memeber, letting them know you appreciate them.", category: "family"},
{act: "Make amends with someone you have wronged.", category: "family"},
{act: "Do chores for a family member who could use some extra free time.", category: "family"},
{act: "Write a letter of encouragement to a younger realtive you know is having a hard time.", category: "family"},
{act: "Figure out a friend or family member’s half birthday (six months from their full birthday) and surprise them with a little treat on that day.", category: "family"},
{act: "Write a sweet, encouraging note and put it in your child’s lunch box.", category: "family"},
{act: "Venmo a sibling/family memeber $5 dollars for a morning treat.", category: "family"},

{act: "Do chores for your parnter who could use some extra free time.", category: "partner"},
{act: "Let your spouse sleep in when it’s his/her turn to get up early with the kids.", category: "partner"},
{act: "Tell your partner what you love about them.", category: "partner"},
{act: "Call your parnter just to say I love you.", category: "partner"},
{act: "Text your parnter just to say I love you.", category: "partner"},
{act: "Write a sweet, encouraging note and put it somewhere your partner will find later.", category: "partner"},
{act: "Get flowers - just because.", category: "partner"},
{act: "Schedule a date night.", category: "partner"},
{act: "Venmo your partner $5 dollars for an afternoon treat", category: "partner"},
{act: "Hug your parnter.", category: "partner"},

{act: "Smile at stragers.", category: "stranger"},
{act: "Pay for someone's public transportation fare.", category: "stranger"},
{act: "Open the door for someone.", category: "stranger"},
{act: "Hold the door for someone", category: "stranger"},
{act: "Help someone struggling with heavy bags", category: "stranger"},
{act: "Help someone with a stroller up/down the stairs", category: "stranger"},
{act: "Tip a little extra.", category: "stranger"},
{act: "Compliment a stranger.", category: "stranger"},
{act: "Stop to assist someone who looks lost.", category: "stranger"},
{act: "Buy a warm meal for someone in need.", category: "stranger"},
{act: "Give someone your seat on a crowded bus or subway.", category: "stranger"},
{act: "Put coins in an expired parking meter.", category: "stranger"}]



users.each do |user|
    User.create(user)
end

kindnesses.each do |kindness|
    Kindness.create(kindness)
end

10.times do
    UserKindness.create(user: User.all.sample, kindness: Kindness.all.sample, date: Faker::Date.between(from: '2020-12-01', to: '2021-01-31'), note: "", completion: [true, false].sample)
end