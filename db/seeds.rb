User.destroy_all
Kindness.destroy_all
UserKindness.destroy_all



users = [{name: "Chloe", phone_number: "6268083997"}]

kindnesses = [{action: "Read a book.", category: "self"},
{action: "Treat yourself to a dessert.", category: "self"},
{action: "Buy some flowers.", category: "self"},
{action: "Go for a walk.", category: "self"},
{action: "Explore new neighborhood.", category: "self"},
{action: "Get a massage.", category: "self"},
{action: "Take a nap.", category: "self"},
{action: "Get dinner with yourself.", category: "self"},
{action: "Tell yourself (while looking at your own reflection), 'I love you!'", category: "self"},
{action: "Donate clothes to charity.", category: "self"},
{action: "Name 3 things you're appreciative of.", category: "self"},
{action: "Be accountable - get there on time.", category: "self"},
{action: "Take out the trash - literally and metaphorically.", category: "self"},

{action: "Don't keep them waiting - be on time.", category: "friend"},
{action: "Tell a friend what you love about them.", category: "friend"},
{action: "Call a friend just to say hello", category: "friend"},
{action: "Attend an event, such as a dance recital or sporting event, of a friend’s child.", category: "friend"},
{action: "Send a message to a friend, letting them know you appreciate them.", category: "friend"},
{action: "Reconnect with an old friend you’ve lost touch with over the years. Share a memory you carry with you.", category: "friend"},
{action: "Donate to a friend’s favorite charity in their name.", category: "friend"},
{action: "Give a friend a book you think they would like.", category: "friend"},
{action: "Send a friend a helpful or inspiring article that made you think of them.", category: "friend"},
{action: "Figure out a friend or family member’s half birthday (six months from their full birthday) and surprise them with a little treat on that day.", category: "friend"},
{action: "Invite a friend out to dinner", category: "friend"},
{action: "Venmo a friend $5 dollars for a morning treat", category: "friend"},

{action: "Call your mom or dad just to say I love you.", category: "family"},
{action: "Send a message to a family memeber, letting them know you appreciate them.", category: "family"},
{action: "Make amends with someone you have wronged.", category: "family"},
{action: "Do chores for a family member who could use some extra free time.", category: "family"},
{action: "Write a letter of encouragement to a younger realtive you know is having a hard time.", category: "family"},
{action: "Figure out a friend or family member’s half birthday (six months from their full birthday) and surprise them with a little treat on that day.", category: "family"},
{action: "Write a sweet, encouraging note and put it in your child’s lunch box.", category: "family"},
{action: "Venmo a sibling/family memeber $5 dollars for a morning treat.", category: "family"},

{action: "Do chores for your parnter who could use some extra free time.", category: "partner"},
{action: "Let your spouse sleep in when it’s his/her turn to get up early with the kids.", category: "partner"},
{action: "Tell your partner what you love about them.", category: "partner"},
{action: "Call your parnter just to say I love you.", category: "partner"},
{action: "Text your parnter just to say I love you.", category: "partner"},
{action: "Write a sweet, encouraging note and put it somewhere your partner will find later.", category: "partner"},
{action: "Get flowers - just because.", category: "partner"},
{action: "Schedule a date night.", category: "partner"},
{action: "Venmo your partner $5 dollars for an afternoon treat", category: "partner"},
{action: "Hug your parnter.", category: "partner"},

{action: "Smile at stragers.", category: "stranger"},
{action: "Pay for someone's public transportation fare.", category: "stranger"},
{action: "Open the door for someone.", category: "stranger"},
{action: "Hold the door for someone", category: "stranger"},
{action: "Help someone struggling with heavy bags", category: "stranger"},
{action: "Help someone with a stroller up/down the stairs", category: "stranger"},
{action: "Tip a little extra.", category: "stranger"},
{action: "Compliment a stranger.", category: "stranger"},
{action: "Stop to assist someone who looks lost.", category: "stranger"},
{action: "Buy a warm meal for someone in need.", category: "stranger"},
{action: "Give someone your seat on a crowded bus or subway.", category: "stranger"},
{action: "Put coins in an expired parking meter.", category: "stranger"}]



users.each do |user|
    User.create(user)
end

kindnesses.each do |kindness|
    Kindness.create(kindness)
end

10.times do
    UserKindness.create(user: User.all.sample, kindness: Kindness.all.sample, date: Faker::Date.between(from: '2020-12-01', to: '2021-01-31'), note: "", completion: [true, false].sample)
end