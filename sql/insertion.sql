delete from author
delete from category
delete from book
delete from publisher
delete from users
delete from notification
delete from comments
delete from likes
delete from bookview


insert into author values('james','bond', 'fsdfa@gmail.com');
insert into author values('laura','dave', 'fdsdfa@gmail.com');
insert into author values('Mark','Levin', 'fsfddfa@gmail.com');
insert into author values('Jashua','Weisman', 'fsdsafa@gmail.com');

insert into category values('True Crime');
insert into category values('Self-Help');
insert into category values('Poetry');
insert into category values('History');
insert into category values('Essays');
insert into category values('Cookbooks');
insert into category values('Biographies and Autobiographies');
insert into category values('Womens Fiction');
insert into category values('Suspense and Thrillers');
insert into category values('Short Stories');
insert into category values('Science Fiction (Sci-Fi)');
insert into category values('Romance');
insert into category values('Literary Fiction');
insert into category values('Horror');

insert into publisher values('Simon & Schuster', 'Simon@gmail.com');
insert into publisher values('Threshold Editions', 'Editions@gmail.com');
insert into publisher values('Alpha', 'Alpha@gmail.com');

insert into book values('the_last', 
						'The Last Thing He Told Me: A Novel Hardcover – May 4, 2021',
						'Before Owen Michaels disappears, he smuggles a note to his beloved wife of one year: Protect her. Despite her confusion and fear, Hannah Hall knows exactly to whom the note refers—Owen’s sixteen-year-old daughter, Bailey. Bailey, who lost her mother tragically as a child. Bailey, who wants absolutely nothing to do with her new stepmother.
						As Hannah’s increasingly desperate calls to Owen go unanswered, as the FBI arrests Owen’s boss, as a US marshal and federal agents arrive at her Sausalito home unannounced, Hannah quickly realizes her husband isn’t who he said he was. And that Bailey just may hold the key to figuring out Owen’s true identity—and why he really disappeared.
						Hannah and Bailey set out to discover the truth. But as they start putting together the pieces of Owen’s past, they soon realize they’re also building a new future—one neither of them could have anticipated',
						 235.00, 234,  'True Crime', 'Simon & Schuster', 2);

insert into book values('American', 'American Crime',
						'The six-time #1 New York Times bestselling author, Fox News star, and radio host Mark R. Levin explains how the dangers he warned against in the “timely yet timeless” (David Limbaugh, author of Jesus Is Risen) bestseller Liberty and Tyranny have come to pass.
						 In 2009, Mark R. Levin galvanized conservatives with his unforgettable manifesto Liberty and Tyranny, by providing a philosophical, historical, and practical framework for halting the liberal assault on Constitution-based values. That book was about standing at the precipice of progressivism’s threat to our freedom and now, over a decade later, we’re fully over that precipice and paying the price.
						 In American Marxism, Levin explains how the core elements of Marxist ideology are now pervasive in American society and culture—from our schools, the press, and corporations, to Hollywood, the Democratic Party, and the Biden presidency—and how it is often cloaked in deceptive labels like “progressivism,” “democratic socialism,” “social activism,” and more. With his characteristic trenchant analysis, Levin digs into the psychology and tactics of these movements, the widespread brainwashing of students, the anti-American purposes of Critical Race Theory and the Green New Deal, and the escalation of repression and censorship to silence opposing voices and enforce conformity. Levin exposes many of the institutions, intellectuals, scholars, and activists who are leading this revolution, and provides us with some answers and ideas on how to confront them.
						 As Levin writes: “The counter-revolution to the American Revolution is in full force. And it can no longer be dismissed or ignored for it is devouring our society and culture, swirling around our everyday lives, and ubiquitous in our politics, schools, media, and entertainment.” And, like before, Levin seeks to rally the American people to defend their liberty.',
						 2532.00, 232, 'Literary Fiction', 'Threshold Editions', 3);

insert into book values('Joshua', 'Joshua Weissman: An Unapologetic Cookbook Hardcover – September 14, 2021',
						'A Weissman once said…"...can we please stop with the barrage of 2.3 second meals that only need 1 ingredient? I get it…we’re busy. But let’s refocus on the fact that beautifully crafted burgers dont grow on trees."
						Ironically this sounds a lot like he is trying to convince you to cook, but he is really not. Is this selling the cookbook? The point is that the food in this book is an invitation that speaks for itself. Great cooking does, and should, take time. Now is the time to double down and get your head in the cooking game. Or you know, dont. Maybe get someone else to cook this stuff for you...that works too.
						How can you know if something is your favorite if 50 to 80 percent of the stuff youve been eating was made by someone else? Butter, condiments, cheese, pickles, patties, and buns. For a superior and potentially even life-changing experience, you can (and should, to be honest) make these from scratch. Create the building blocks necessary to make the greatest meal of your life. 
						While youre at it, give it the Joshua Weissman or your own twist. As Joshua would say,
						If you love to host and entertain; if you like a good project; if you crave control of your food; if fast food or the frozen aisle or the super-fast-super-easy cookbook keeps letting your tastebuds down; then Joshua',
						54.00, 674, 'Self-Help', 'Alpha', 4);



insert into notification values('BUG', 'there is a bag that i found in website please write to my gmail and i will sent the bag', 'kushvon@gmail.com');
insert into notification values('offer', 'I want to but your website, please dm me in gmail', 'azarov@gmail.com');


insert into users values('azik', 'azik321@gmail.com', 'fkpdasfkp213');
insert into users values('pokivara', 'dasing@gmail.com', 'f12345679');
insert into users values('hensome', 'hensome@gmail.com', 'qwertyu3456');
insert into users values('itachi', 'itachi_di@gmail.com', '234325asd');
insert into users values('naruto', 'Naruto_uzumi@gmail.com', 'olishker223');
insert into users values('obito', 'obi7@gmail.com', 'mangareaderi21');
insert into users values('david', 'david_sejong1@gmail.com', 'i2loveindo');
insert into users values('amada', 'azik321@gmail.com', 'thisispassword');



insert into comments values('the_last', 'I really like this book', 'david');
insert into comments values('American', 'this book is so amazin', 'naruto');
insert into comments values('the_last', 'I reccoment it to everyone', 'pokivara');
insert into comments values('Joshua', 'tso much information', 'obito');
insert into comments values('Joshua', 'This book changed my mind', 'pokivara');
insert into comments values('American', 'The book is boring and exlanation also', 'azik');
insert into comments values('the_last', 'I personally reale into this book', 'hensome');
insert into comments values('American', 'if you like fiction, this book for you', 'obito');


insert into bookview values('david');
insert into bookview values('david');
insert into bookview values('itachi');
insert into bookview values('azik');
insert into bookview values('naruto');
insert into bookview values('pokivara');
insert into bookview values('naruto');



insert into likes values('itachi');
insert into likes values('pokivara');
insert into likes values('azik');
insert into likes values('david');
insert into likes values('naruto');
insert into likes values('hensome');
insert into likes values('itachi');
insert into likes values('hensome');
insert into likes values('itachi');
