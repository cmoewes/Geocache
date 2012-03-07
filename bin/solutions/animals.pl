
my $matches;
my $caches;

while ( <DATA> ) {
	chop;
	my @w = split "\t", $_;
	if ( my @s = $w[ 1 ] =~ m/(kangaroo|ape|emu|seastar|parrot|rook|hare|warthog|american bison|oyster|deer|locust|squirrel|mole|ewe|newt|grasshopper|dromedary|mare|seal|budgerigar|zebra|basilisk|waterbuck|clam|cockroach|kitten|narwhal|worm|pronghorn|human|alpaca|pelican|mustang|lovebird|wildcat|lamb|ox|steer|raccoon|mynah bird|bison|elephant|puma|mallard|tarsier|owl|antelope|bee|cod|jerboa|wolf|hedgehog|koodoo|kudu|doe|panda|gull|guanaco|ant|polar bear|heron|cattle|cow|jay|bat|goose|aoudad|moose|panther|reindeer|fox|wasp|weasel|mink|hornet|swan|sand dollar|lion|stallion|woodchuck|dolphin|quelea|bluejay|peafowl|falcon|mountain goat|skunk|dugong|coati|crow|hamster|sheep|loris|hippopotamus|eel|pigeon|ermine|baboon|chameleon|mosquito|lobster|seahorse|anteater|wapiti|magpie|gerbil|crane|fish|serval|camel|capybara|echidna|barracuda|cormorant|wolverine|tiger|buffalo|dogfish|penguin|bear|platypus|cobra|impala|jaguar|roebuck|dormouse|guinea fowl|shrew|ocelot|toad|kinkajou|hyena|crocodile|chipmunk|lyrebird|reptile|prairie dog|ground hog|musk deer|spider|fly|springbok|caribou|snail|donkey|lynx|mule|frog|mandrill|otter|jackal|elephant seal|woodpecker|red deer|lemur|monkey|porcupine|vicuña|crab|hartebeest|giraffe|ostrich|termite|porpoise|squid|musk-ox|bush baby|armadillo|leopard|dragonfly|raven|marten|guinea pig|iguana|dog|canary|stinkbug|butterfly|cony|eland|argali|okapi|yak|beaver|ferret|horse|coyote|manatee|hawk|alligator|mouse|chicken|rhinoceros|wombat|swallow|gazelle|jellyfish|vicuna|chinchilla|silver fox|fawn|pig|gaur|cougar|red panda|civet|llama|meerkat|quagga|turtle|lizard|turkey|tapir|aardvark|kouprey|wren|burro|oryx|zebu|mongoose|opossum|wallaby|trout|rat|dingo|rail|gopher|ram|cheetah|dove|salamander|sloth|partridge|hog|pony|gila monster|cat|dinosaur|sea lion|grizzly bear|ibex|kid|marmoset|orangutan|bull|chimpanzee|colt|puppy|parakeet|gnat|boar|gnu|ass|lark|nightingale|whale|gemsbok|komodo dragon|snake|shark|goat|eagle|bunny|water buffalo|sea urchin|giant panda|duck|koala|finch|gorilla|bighorn|chamois|walrus|hummingbird|peccary|muskrat|duckbill|louse|grouse|elk|rabbit|caterpillar|badger|addax)/i ) {
		foreach my $f ( @s ) {
			push @{ $matches->{ lc $f } }, \@w;
			$caches->{ $w[ 0 ] }++;
		}
	}
}

use Data::Dumper;
#warn Dumper $matches;
#warn scalar keys %$matches;
#warn Dumper $caches;
my $used_caches;
my $count;
foreach my $animal (sort  keys %{ $matches } ) {
	print join "\t", ++$count, $animal, $matches->{ $animal }->[ 0 ]->[ 0 ], $matches->{ $animal }->[ 0 ]->[ 1 ];
	print "\n";
	$used_caches->{ $matches->{ $animal }->[ 0 ]->[ 0 ] }++;
}

warn Dumper $used_caches;

__DATA__
GC2Q5XF	“P” Marks the Spot-Mt. Olivet Chapel
GC1GQRP	French Regional Park - Dog cache
GC2GXP7	MOUSE HOUSE
GC1CQ2G	Turtle Lake Stump-Lifter
GC29PYW	Fishin' and Cachin'
GC26H2N	Roxy's Rendezvous
GC351GT	A picture is worth 100 monkeys
GC28E7V	Baby Bear's Backyard P-n-G
GC1W4KA	Cougar Cache
GC26H6H	Into the Rabbit Hole
GC1T78X	Iron Horse Park
GC271Z3	Bass Creek Park Post a Log
GC23QJX	For the kids - No Lion
GC1WQ27	Basset Creek PNG
GC1T78Q	Lions and Tigers and Ducks, Oh My!
GC1VE41	Basset  Bamboozle (BYOP)
GC2CY6X	Deer Crossing
GC2Y7Q7	GPcat
GC2YBBK	Pickle Weasel
GC36N5H	A RAM SANG
GC2J87J	Cup of Joe - The White Elephant Edition
GC2BJEC	Home of the Friendly Fox
GC2FT3H	Golden Gopher Grandpa
GC25G5K	Reptile's Mega Cache
GC2H9N6	Wolfe  park
GC35C76	QUEEN OF BATTLE FOLLOW ME!!
GC1JNBW	TWS Does 1000 at ALP
GC2CFG0	Elk River Earthcache
GC22P9T	Doublemoose Scores the Grand Slam!
GCT157	Lucky Cows
GC1QDYJ	Probsfield Panthers
GC32JGB	Minnesota State Fish: Walleye Pike
GC2EAQ4	Grasshopper assault
GC2MFTP	Flora Fauna Cache
GC1RF6B	Power near radison
GC192P0	Cache of the Millennium
GC29J8D	WHICH TREE IS IT?
GC2VCHE	mmmmmmmm ice cream (plymouth edition)
GC26MEA	A Dream of Sunshine
GC29J84	LIGHT CACHE
GC2HGZJ	Brooklyn51 made us do it!
GC2CP8K	Ice Ice Baby
GC1T3BV	Cache in the woods
GC1VYY9	Another Quick P & G
GC20PZ5	30 Minute Limit
GC1HXJ5	Heritage Park
GC2AC47	Bookworm
GCHAKR	West Metro TB Inn
GC1W2XR	Hertiage park's last geocache
GC2MBG7	P Marks the Spot: Saint Joseph's Church
GC1PC6T	End of the Line Pine - French Regional Park
GC1NM13	Locktopus Octopus - French Regional Park
GC2MEWK	Vista Plymouth
GC1NM18	Trusty Rusty - French Regional Park
GC2MEW8	Cache a Falling Star
GC1P98Q	Neat Seat - French Regional Park
GC2MEVY	Lightning Never Strikes Twice?
GC206QV	Earthworms & Pachyderms - French Regional Park
GC1DCC7	French Regional Park
GC206QK	Don't Trip or Slip - French Regional Park
GC2MEVP	What's the Point of Curtis?
GC2J17K	Duck...Duck...Goose!!
GC2MEVA	Quacker Queach
GC1X43F	DIPO 3
GC2MEVH	No-Name
GC26ME4	Tuxedo
GC1NTBB	Low Bow - French Regional Park
GC33EQZ	Sweet Little Tweet
GC2E2FD	Animal Tracks
GC1RREV	Hemlock park
GC1T8Z5	Jack & the Giant Geo-Beacon
GC1NCTT	Goose Poop Cache Group II
GCRD7P	Foreign Coins
GC1P94M	Leaving Goose Poop
GC1N5XM	Goose Poop Cache Group I
GC20F21	Tipped Shot
GC2GBN8	Zonk led a Crayon orchard afar
GC2RZ2K	Knot another two!
GC1TWQ5	All About Trout
GC2RQ6F	Knot another one!
GC3B4JP	Sign, sign, everywhere a sign
GC2RZ0N	Knot really a knot
GC2WA6M	Cachelot
GC2MJJH	Warning! Contents Under Pressure!
GC2XJK9	Circle Park Cache
GC37JBJ	Still Crazy
GC21BYX	Go Fish
GCJV38	Hello There Pilgrim
GC30XGA	Knot another knotty pine!
GC20AZ6	Playin Around
GC20F1Y	Hidden at Timber Shores
GC1P37B	Tribute to Tonkajen's 1000th find!
GC25AEV	The Adventures of Cacheman: Episode 2
GC2MDHD	The Adventures of Cacheman: Episode 8
GC1PV6E	WAVE at the cars
GC1RXE9	West Northwood
GC26GRM	Stopping by Woods
GC1VJ49	Path to Cul-De-Sac??
GC322WD	Laffy Taffy Jeopardy:  "Silicon Valley Population"
GC34CJ4	Eagle Lake Regional Park - From the Tips
GC34EX1	Celebrate Seeingitdifferent's 2000th Find!
GC2RN47	The Rusty Skirt
GC2F8NX	Fair view from here
GC16W77	NEW ALTOIDS 2
GC25G4T	The Adventures of Cacheman: Episode 3
GC2F7TV	The Duck Bar
GC2X3HB	Don't Blink
GC1P0QF	Tribute #3 @ Eagle Lake (May 2005)
GC36V50	South Northwood
GC1T0T6	Mid Northwood
GC2GP0T	BOO!! IT'S ALMOST HALLOWEEN!
GC38M73	Laffy Taffy Jeopardy:  "Holmium on the Range"
GC35VMB	Can you feel it
GC1YAB4	Johnny Cache
GC2E54H	One Rag
GC1XMWD	Medley Pines
GC2DB2P	No Parking
GC36V3T	East Northwood
GC1YFXB	Indigo
GC2BMBN	Into the light of the dark black night
GC34Y22	SIDs 2000th Find!
GC1XKRM	Yunkers Park
GC27AJQ	BOBO
GC1YZZA	Will You play with me?
GC161XN	NHAF Cache
GC2F7V1	Louis Braille
GC1WNKW	JW's Big Air
GC2FT2Y	Free Money
GC1H03A	394 and 101 S
GC2W2QT	Lyrically Speaking Vol.9, The 90's
GC36A9Z	I Love You Hilda Whitcher!
GC2T14N	Lyrically Speaking Vol.1, by 3humphs
GC2W2QY	Lyrically Speaking Vol.8, What is a Mondegreen?
GC2XBGQ	Lyrically Speaking  Vol. 10, Motown
GC24WRY	PaperRockScissors
GC2T25F	Lyrically Speaking Vol.2, Male Duos
GC2WEX0	Lyrically Speaking Vol.7, The 70's
GC2T26V	Lyrically Speaking Vol.6, Like, Totally the 80's
GC1JWT0	Meadow Park 7
GC29WNG	U-Neek Cache
GC1XKRY	Got Game?
GC2T26H	Lyrically Speaking Vol.4, 50's Early Rock
GC2T261	Lyrically Speaking Vol.3, Country Fried.
GC1QDTB	NCE
GC2GAD2	Zen
GC2T26K	Lyrically Speaking Vol.5, FEMALE Duets
GC263YK	Honey's Hideout
GC148X3	394 and 73
GC2GX40	A Place of Peace
GC296BX	Quietly Resting in Golden Valley
GC31W2W	Brooklyn51 Made Us Do It Again!
GC1W600	Bibliophilia Abounds
GC2FTR5	500 in 6 Months
GC1YACM	Night Reflections
GC2G1AP	begin park micro
GC1T790	Keep on the Sunnyside
GC3537Q	Eerie Pennsylvania Woods Scavenger Hunt
GC2R9VB	Here Comes the Rain Again
GC1T61N	Orphan of Pennsylvania Woods
GC1V4GK	Fred Sims Resurrection
GC283NH	Pitch it over the fence.
GC2ERZW	Don't step in it.
GC1C5RR	first coniferous
GC1R96C	Hon-W Field
GC289AT	Walk Down...Memory Lane
GC23W0M	Audio Nippon
GC1T796	Meadow Lake Heights
GC21X3M	The dead rose from the grave!
GC2VQJX	And they're off...
GC1G3CF	PNG
GC1WQ2G	Valley Place
GC2T53Q	pond view
GC2X3GP	CITO Greedo
GC1TBH1	Whistle Stop
GC111J6	Dorothy's Cache
GC2JJTQ	Hail fellow, well met
GC1VFJB	Hagemeister Pond
GC2X3GN	Golden Valley Earthcache
GC2X3GK	CITO Barry Zito
GC2NZQM	Klassik Toonz, Vol. V: Total Eclipse of the Heart
GC1YBVR	Johnny Gray
GC17A79	Park & Ride
GC2MFVC	Woody's Round Up
GC277R9	Hagemeister Pond Woods
GC69CC	Great Local Park
GCQ3QA	On Top ?
GC1T3BD	MN Music: The Suburbs
GCVYPD	Creekview
GC1P339	Where could it be?
GC2X3GR	CITO Neato
GC37W3J	Cito Gaston
GC26V42	Only Outdoors!
GC1P19B	D2BB6 - Love Will Keep Us Together
GC2MEWF	The Taming of the Screw
GC150QB	Sunny Side Up
GC316TY	My 1st Birthday
GC2GTJ8	Z Lamplighter
GC31JV9	Finding Neenah
GC2X3GQ	CITO Speedo
GC2AG0C	That's Amore
GC2C0RQ	Is that what I think it is??
GCWZ2D	Three Armed Tree
GC2Q7D9	Thomas Edison: American Giant
GC1FK1A	Leave Your Mark at Lion's Club Park
GC2MWF9	Narrow Sighted
GC2640R	How long is the wait?
GC2E54V	Not a Scenic View
GC2XY4V	50% Off, Printed Materials
GC2FQRT	MnGCA Breakfast Buddies Crystal
GC2J417	One more in the park
GC31T1P	Mount Maple Grove
GC27HGD	Lock Nessa's Place
GC16HJ7	The Guard
GC2X3GT	CITO Guido
GC2CBVB	Labguy's evil overlook
GC2HFZB	5/23/2007
GCV846	Two Legged Tree
GC1XBX8	Crystal Arts Project
GC2KQ0X	1st Annual MnGCA Fantasy Football Awards Banquet
GC3BHTG	2nd Annual MnGCA Fantasy Football Awards Banquet
GC2GA7N	E. A. Poe: American Giant
GC26BW2	For Lexi
GC3B3D9	The Art of Walking
GC2JAQZ	Caching for Insomniacs
GC2Q755	Robert Frost: American Giant
GC39GYJ	Laffy Taffy Jeopardy: "Copper Nitrate"
GC226XX	Klassik Toonz, Vol. III: Piano Man
GC39990	O Oxygen
GC2PVKJ	Flat Among Many
GC1TBGM	Dead Ringer for Becker
GC2Q6MY	Amelia Earhart: American Giant
GC2CDHN	ZAP! It Shocked me
GC35154	Creek Cache
GCHC0P	Cedar Manor Cache
GC37T31	4 Tons
GCNE2E	Turkey Lurkey
GC23BBB	For the Birds
GCV2ZA	Forgive our Trespass
GC1W6BT	Salmagundi
GC1HR1A	Albino Tree
GC28F4K	Queen for a day
GC3536Y	Another Creek Cache
GCBC56	Big Willow Too
GC21F0M	Welcome to 47th
GC1F8A2	Island in a Sea of Asphalt
GC343M6	The Weeping Cache
GCVV7X	Baseball Seat
GC29JZX	Say Good night GRACE-E?
GC2QZMD	Is the bus late?
GC2E20F	Big Willow 12
GC25YWR	G: Minnehaha Creek Preserve 2
GCRG2A	Pond View
GC25257	Another for the Kids
GC2GJW3	OFFSIDES!
GC37T39	The Key
GC1EDYF	out of bounds at Welcome
GCQ5D4	Bikeathon - 494
GC2M2TJ	For the man with One Glove and a Racoony Hat
GC2CFY5	Have your tickets ready!
GC2V9YV	Stuff on the Sidewalk
GC23AK1	Unequivocally (Without a Doubt) Puzzle Valley
GC17A7F	Park & Ride 2
GC1TXVT	Step Up in Fantasy Woods
GCQ5D2	Bikeathon - Muggled?
GCQ5D6	Bikeathon - Rocks
GC2A9RB	Milk, Bread and a what?
GC26H9B	Size Matters
GC2ACT8	MnGCA Breakfast Buddies - Maple Grove
GC15WEY	hannon point
GC22GPM	5 and Dime Store
GC2QDKM	Challenge: Get to know your fellow cachers
GC316QD	a nice walk
GC2RW6J	A Mighty Rushing River
GC6557	Lucifer's Elbow
GC27KKW	Northland cache
GC2EDVY	No Outlet 2: Path Side
GC235YB	I never promised you a Rose Garden
GC1NZ8W	D2BB5 – Take It to the Limit
GC2BH81	The Lunch Money Cache
GC2VH0Z	Frosty Mug of Cache
GC2FXPJ	Adventures in Geocaching
GC36ZAF	My first puzzle
GCQ5CX	Bikeathon - Friends
GC23ZAV	Yet Another for the Kids
GC37404	Scream Hide
GCQ5CW	Bikeathon - Trolley
GC21C2W	The Golden One
GC2C275	But why can't I have a pet??
GC25253	Into the Wild Blue Yonder
GC1H020	Twin Lakes
GC2HJPX	Bus ride to nowhere...
GC34P48	DT&H
GC343E1	Creekish View
GC242GY	Sound Wall 2
GC2422H	Twin Oaks Memorial Park
GC2A3ZR	Who's Barry Badrinath?
GC2HE5E	IT"S got to be here "SOMEWHERE"
GC2HNJN	Triangle
GCM4GR	Laurel Hill West
GCQ4P4	Bikeathon - Tonkawood
GC1CRA4	The 100k Mini-Acro Celebration Cache
GC11G2C	The Robbins
GC2FV8Z	X-Men
GC2JDYX	POW-MIA
GC22F4C	The Art of Transcription
GCQ4P2	Bikeathon - Swamp
GC38BM6	Another Visit to Duck Pond
GC23053	my First puzzle hide-an introduction
GC24VC2	Take a Stroll Through Robbinsdale
GCG1MH	Blazer Park
GC22X5T	City Hall
GC2ATG4	At Posted Coordinates
GC2BJTK	Lee Parkwood
GC2BN8J	Shake and Bake Cache
GC14BA7	Watching the World Go By at Sunrise
GCJC6H	Exonumia: Bowl-A-Strike
GC1JB53	Peeping James
GC35NC4	Holy Cache!
GC216HT	Lee Park Stroll
GC2362Q	Sharknose Bunnies Finds 1,000!
GCQ826	Bikeathon - Overlook
GC2340X	To Red
GC27RAR	WHERE IT BEGAN!
GC2BAYV	The First Commandment
GC35GVW	Tool-Time
GC15V1F	My Preciousss
GC1TWV3	Yankee: My Favorite Store
GC35GV6	Mechanical Nightmare
GC1B49B	I wanna be a pony in ponyville
GCYR4V	Aquila Park 3
GC2A0D1	Northern Star - Gabbert Scout Service Center
GC2WNK9	The Boy's First Cache
GC701A	A Sad Little Park Cache
GCNYV6	RR to Hopkins 2
GC389FN	11/11/2011
GC2AZBT	This Is The Shortcut, I think
GC1ZWQ2	CB: The Same Thing
GC2AD5H	No Parking, No Outlet
GC36VJ8	Ms Sunshine finds 1000!
GC2C3AR	as in "Labrador Guy"
GC21GCJ	It's a flat out lie!
GC24A7Q	Sparkyfry Finds 2,000 Caches!
GC2KYMN	Woody was here
GC23X1Q	Thanks!
GC2QKXA	Speaking of Christmas
GC38KJM	Sparkyfry 5K Tribute!
GC2P2BA	mikedeotis finds 1000!
GC1NKQP	D2BB1 - Do the Twist
GC26DRD	TLN
GCVED9	Bikeathon - Curves 2
GC2K7V9	Bring a Geo-Monkey (To Slay the Serpent...)
GC2C1NK	Flagstaff, Arizona
GC2QP2C	née
GC7F8C	Tougher to Plunder
GC1NMV6	D2BB2 - Norwegian Wood
GC2C1P1	World's smallest pencil
GC2R26Y	Hartkopf - May Day
GC2R26B	And lastly, Atlantis
GC218BE	Kylawn Adventure
GC2JZGH	Today, is a Good Day!
GC17BD4	The Ducky Pond
GC1HCKR	MnGCA Board Game: minnesotabrad
GCJJ58	Bikeathon - Curves
GC1P7ZV	Crystal Lake View
GC2TFE0	ACROSS THE POND #1
GC2DQCN	Sanborn Park version 2
GC1P7X7	Camden Light and Power
GC22ZHY	My First Hide
GC2HW6X	Bronx's Park Hideout
GC1P869	Crystal Lake Beach
GC2V4XX	Is that what I think it is? # 3
GC21KXF	O'Geocache
GC2598G	Exact change only!
GC1ZEY7	Kylawn Jungle 2
GC2T6J6	Time for change
GC2500J	Stargate P4493 - Twin Cities
GC37AF8	Iron Horse Passing By
GC1RVYK	BC - Arboretum Arbor
GC2C055	Dome sweet dome
GC2F8KZ	aquila36
GC35N6Y	Somebody Ate Something They Shouldn't Have!
GC1RVYA	BC - Kylawn Jungle
GC2C05Z	Brooklyn Park's lunchbreak cache
GC17D1F	Smokin' Nurses
GCHC0N	Knollwood Canoe Landing
GC1PBKE	Between Orchard and Perry Redux
GC37AFD	YOu arE HEre ->
GC25PER	H is for Hopkins
GC2FPTV	The Brewery is Back Here!
GC38GF6	Dots
GC2A2FM	Jimmy Hoffa's Final Resting Place
GC1C4KH	You Light Up My Life
GC1PC5P	Oak Hill View
GC2GMH5	Stink Outside
GC1QRMZ	Shelter
GC1B5M5	Sorry ma, forgot to take out the...........
GC28QX9	Almost a P&G
GC1PCJW	Between Perry and Orchard
GC1R7CV	A & M's first hide.
GC286QF	FF Fastgrab
GC2EC22	JAUM Cache #7
GC2H54Z	Emily Dickinson: American Giant
GC1QYAH	Happy Birthday!
GC1J6FQ	It's So Wirth It!
GC1J6JE	Hockey Sticks not Bombs Kiosk
GC5882	Surveyor's Error
GC283NA	Stop Whining
GC2MZ4T	Victory Memorial Drive
GC32KW9	Keep on Truck'in!  #2
GC2QKXK	Reserved parking
GC2RW80	Walker Park
GC1PJQ6	St. Louis Park Demolition  #1
GC37AFK	Paul Bunyan Was Here
GCJ3WZ	Squares of Magic
GC1K3KJ	Welcome To St. Louis Park
GC2TABA	Cache Path
GC2TFFV	ACROSS THE POND #2
GC18KP0	Ryan Lake Cache
GC1K3JW	Another Freakin' Creekin' Cache
GC23E0P	Another quick park and grab....maybe....maybe not
GC2ETQE	Icythorn42's first homerun
GC263BQ	Osseo Time
GC32JGD	Geocaching is going to the Dogs!!
GC2VK0F	Give me a C - I - T - O, What's That Spell?
GC2A0RK	Alone-ish
GC2H69X	Woody - Take 2
GC1R2HP	A Change
GC2E1YR	JAUM Cache #5
GC2HYM5	Where to?
GC1Q1TR	Hey Jerry, it's the ***** pen,it still works Jerry
GC2H4AX	Prairie Dog
GC2224N	Circling the Drain
GC3632X	Slice of cache
GC2GA1Q	Ghostdale
GC2EYFQ	Futon
GC2FHXF	Walk along the path
GC1PBJA	D2BB7 - Ticket to Ride
GC17EWH	A Walk in the Woods 3
GC1P968	Tinysongbird
GC39N3Y	Baker Road 11
GC21PED	Sunshine Park
GC2G2XJ	Saturday Special
GC22556	Follow Little H To Work
GC2Y605	Nobody Has More Fun
GC3610E	TORNADO
GC37AF4	kcuddoowekard
GC2X49X	So long, and thanks for all the fish
GC28VRX	Dead End . . .?
GC1AXNG	Magic Mirror (moved 6/17/10)
GC35VY9	Hope!
GCG1B7	Lilac Park
GC263C1	Osseo Memorial
GC1Y9Q9	On the edge of green prairie
GC2VJ4W	Cup of Joe - Ridiculous Hats Edition
GC39BAX	Cup of Joe - 2012 White Elephant Edition
GC39N4G	Baker Road 10
GC2GA7B	Peanut Butter!
GC2CBTW	Hurricane K!
GC2DA6K	This Cache Will KICK Your Butt
GC2RWWM	Arroyo
GCXV24	Near Hole #1
GC37AF2	Following Red_Devil
GC2RWVY	In The Sticks
GC2RWV1	500 With Gusto!
GC2HYMK	It is finished!
GC28DQE	Charest Micro
GC1Y9F5	South Oak Lake
GC39N4F	Baker Road 09
GC2Y0B0	Foamy's Stash!
GC2ZZB6	Darmstadtium
GC37AET	Swiss Treeze
GC1XACW	It's Almost Over! - New Life!
GC2C4T8	Misery loves companies
GC2C4RZ	Brooklyn ParkNGrab
GC2QBPE	3humphs finds 1,000!!!
GC1YW37	EXIF
GC2G33M	Sittin' n Cachin'
GC2797M	Park Here, Stop ahead
GC2XBXW	LabguyMN Finds his 1,234th !!!
GC3589V	NANO BARGAIN BIN!!
GCZK5G	Old Mill Overlook 2
GC39N4D	Baker Road 08
GC36XRK	Rot
GC1V1GH	Buffer Park - Redo
GC3589P	COMING INTO OSSEO!
GC2DHKY	Park and Walk and Grab
GC2RP4D	Palmer Lake Challenge by 3humphs.
GC1RVR5	Poe's Micro
GC27GTX	So he say's 'no I went to a community college!'
GC25CN2	Brookdale Wetlands
GC24V8N	Monkey Arms
GC1PFKG	In the Thicket
GC35BR3	Behind the Scoreboard
GC39N4C	Baker Road 07
GC27F24	Evil's Twin Cousin
GC3589J	TRAIL TUBE!!
GC1NZ84	D2BB4 – Hooked on a Feeling
GC36XPV	Walk the plank, Cacher!
GC10NTH	Envy
GC2MBNC	Nerd Wars
GC17AZD	Folwell Pines
GC27R8C	Surrounded By Docks with No Lake In Sight
GC281WX	C: Cedar Lake Runoff Pond 2
GC4C5C	West Palmer Lake Park
GC1E4Z4	Ziggy
GC18AQM	Humboldt Greenway
GC1M2JM	Boot Up and Stay Warm !
GC2HQGE	What's a Cache Like You Doing Here??
GC2PH9M	Where's the shopping center??
GCQR36	Kinsel Town
GC2PBEJ	Duck Xing
GC3589E	THE CAMMO NANO!!
GC3A40F	Room for one more in the park!
GC339VG	A Grand Tribute to Spstanley
GC2R681	Great Scott
GC1N6X7	Palmer Lake View
GC2FNW6	Beyond the Ho Ho
GC1XHTH	One for the Numbers
GC1Z5BP	Why in the Woods?
GC35FK2	Let Teddy Read You A Story!
GC13K34	T and A: Warrior Women: Carol
GC39EW8	Baker Road 06
GC21PCF	Good evening Mr. & Mrs. America…
GC20FBH	Ho Ho Ho
GC37N19	Garden treasure
GC3A9XW	Central Cite
GC1CMXN	It's Almost Over 2!
GC2WK8E	Minnetonka Border
GC1P5QB	Shingle Creek: Micro
GCR404	Bass Lake Preserve 3
GC1XHT8	5951
GC21CRM	Minnstars:  The 2500/50 Club
GC20FBJ	Hide for Heidi
GCY6GZ	Once an ODS Cache...
GC23DWN	Hey, Nice ASCII
GC3589B	I WISH MY FINGERS WERE SMALLER!!!
GC1CTEV	Fourth Rules "B"
GC39N4R	Baker Road 05
GC27X7K	Creek's Edge
GC8B17	Earle Brown Heritage Center
GC1CTED	Fourth Rules "D"
GC1QT53	Duch Finds 1000
GC113BK	Audio/Visual Sudoku
GC2B2QJ	Sharks
GCZ59J	ON PALMER POND
GC14MAR	Bass Lake Secret
GC35897	NANU NANO!!
GC255HA	Qwerty2582's First (fun) Hide!
GC1Z203	Cal Marvin - Warroad, MN
GC39BWJ	Nitrogen, etc.
GC2BMCN	Micro in the Woods
GC39FZC	Baker Road 04
GC1FN8W	Dead Mans Cache
GC1PG97	Calhoun Village Micro
GC12E10	Lone Lake Park 6
GC26BJR	Sharp Right
GC1XX56	Not Quite A "10"
GC1G031	Circle Me Bert - Woods
GC35895	TRAIL WHITEOUT!!!
GC2EVYV	For the Love of Coffee!
GC1XB26	Skipper's Idea
GC1G02W	Circle Me Bert - Side Trail
GC29F0C	Captcha Cache
GC2H0TD	Tribute to tonkaMN's 1,000th Find
GC29H3Q	Right lane ends soon
GC39FZB	Baker Road 03
GC1Q4K2	Tunnel Vision
GC256FW	Tree Fiddy
GC1P029	Water Logged at Palmer Lake
GC29H4D	What happened to the hotel??
GC1WDR1	O: Lone Lake Park Access 2
GC1P5WH	2,212°C
GCNHMN	In Honor of R.J.
GCYYHJ	Connie²
GC39FZ9	Baker Road 02
GC1NRWC	K9-Crossing
GC35C7Q	VINDOGS POWER TRAIL!!
GC1G03G	Circle Me Bert - Hangin Out
GC24JR9	Word Circle
GC10KA3	Stand Tall
GC39FZ7	Baker Road 01
GC2AC2R	Bring Milk
GC1CYAH	Next Time Won't You Sing With Me?
GC2H8K3	Don't Forget Water
GC35C7P	RUSTY BOTTOMS
GC1CRDE	Lucy Lu Pooh
GC2GJK3	Xerophobous
GC25DJA	Sticks
GCQZ49	Bren There, Done That
GC35C7C	QUIT SMURFIN AROUND!!
GC237B3	Cinemas 20 #1
GC28WFC	MnGCA's First Ever Pizza Night!
GC2F30N	MnGCA's Saturday Night Pizza Night!
GC2MAFM	MnGCA Family Pizza Night
GC2YXYT	MnGCA's Summertime Family Pizza Night
GC1JJEV	Psychedelia: When I Was Young
GC1K9HV	Psychedelia: I Put A Spell On You
GC1338H	Green Thumbs
GC237B4	Cinemas 20 #2
GC16YY4	RickRich's 5000+ Finds Tribute Cache
GC16YYY	Holasek Hills Park
GC35C6Z	TO THE BAT CAVE!
GC35C6P	JEFFERSON HWY TRAIL!!
GCA0E2	Jumping "Jack" Flash
GC18D04	FREEZE GOPHER!
GC2HZ0X	Coffee, crafting, and CACHING
GC15XXP	The Docter Inn on Bryant Lake
GCTV6V	Vernon Hill
GC114W3	a.k.a. Mud Lake
GC31J3N	JUST PASSING BY
GC6DD3	For Whom the Bell Tolls
GC2QZMQ	MnGCA Breakfast Buddies -  Brooklyn Park
GCRECB	Bredesen Park 4
GC2FY07	Melody Lake Trio: Ruff-Ruff
GC2WEEE	Melody Lake Trio: Quack Quack
GC251AQ	Daddy's Toybox
GC2B5XF	Melody Lake Trio: Middle Child
GC2GXWT	62 view
GC1CFTZ	East Bryant Lake Bionicles
GC2B5X8	Melody Lake Trio: Tweet Tweet
GCZT99	Bredesen's Secret
GC24K1X	Village Of Lost Souls
GC38BB0	F is For Fridley
GC1X08G	S.O.E.M. - Society of English Majors - 201
GCAB11	The Armory
GC2E1JG	We are the Champlins
GC2HK42	Dry Your Eyes
GC270Z6	Teenager Cache
GC25ZQR	Peep!
GC261Y3	Peep! Peep! Peep!
GC23BPB	Sullivan Lake Shelter
GC207EY	Boy Scout Wreath
GC1VK89	Center Field
GC31B80	Come Meet the Aussies! (Dress Rehearsal)
GC336NB	Come Meet The Aussies! Show Time
GC2J8F1	MN LPC Series - EPMinnesota
GC26GT0	McGuire Park Mystery
GC2JNEJ	Branching Out
GC2AG9B	Dog Walk
GC2WFKX	twitter HQ
GC19H1H	Quite a Nice Place to Sit
GC1FWFJ	Spare Time
GC2Y0JH	whistle Stop Jackson
GC32P9E	Ginger Fist
GCR3F6	The Evil Micro Experiment
GC1T80R	River Cache: Poolside
GC19H1E	Xtra Bowl of Cache
GC1VX4Q	Zoom Zoom
GCV36Z	Crosstown Grid Lock
GC1XPJT	Derek, Aaron, and Pete's Secret Cache #1
GC2HP0V	Deisel's Great Wall of WWL Park
GC22H7Q	Across The Lake
GC2AWPK	Me Tarzan, You Jane
GC2D3MD	Dance your backside off.
GC1PGXR	A Little Piece of EP History
GC2MYHR	Cup of Joe-Spring has Sprung!
GC2VVYT	April Challenge - JAIL BREAK
GC2HBJW	WWL Park Troll House
GC2J5JP	First Snow Cache
GC2HAJ8	Nightmare on Elm Tree
GC2J1MN	Green Camo Puzzle (Remix)
GC27F1X	Industrial Cache
GC1Z957	Tree Line
GC2GBBG	This One Is Guarded
GC11RJR	Chancellor of the Exchequery Geocoin Exchange Bank
GC2H85G	Cup of Joe Springbrook
GC2KW11	New Years - LPC
GC293EC	INSPIRATION: Angel
GCWQQY	Office Space
GC28V9F	Awesome Greenway Trails #3
GC203ZR	I let you call me Stevesy...
GC27TAG	Awesome Greenway Trails #1
GC280VR	Carrot Top
GC1FRTA	Pop Fly
GC2N53P	Jessica Approved PNG
GC282XP	Don't Wee On The Greenway!
GC2DN9A	JAUM Cache #4
GC28DH0	Skirt Lifter
GC1T8D5	Adams Hill Park
GC1246C	Why? Why Not!
GC2EDBK	JAUM Cache #8
GC2R6Z3	Cup of Joe- Anoka Edition
GC28HPZ	This is no picnic at hanging rock!
GC29HHV	Aaron Greenwald or Josiah King?
GC2C6HD	BBR: Call A Friend!
GC1QQ1Y	Minnstars 1000 Finds Tribute Cache in ALP
GC28GQH	Rum River Dam, Anoka
GC15M2R	Fowl Play
GC1NGV3	Anoka Skyline
GC141P3	Anderson Lakes
GC1J612	8400 Tower
GCYZA9	Cash n' Carrie II
GC1QQ1W	Ice Rocket 1000 Finds Tribute Cache in ALP
GC2H80P	CreekWood Park Crowd
GC1J618	Mt Normandale Cache
GC29HKE	Java Blues Cured Here
GC2J9XE	Cup of Joe, A time to relax
GC14BDV	SEVENTEEN
GC1M51W	It's a Girl Thing
GC21Q0P	Aquadore
GC1VD5Z	Don't Weep for Me, Aquatore
GC28YNA	Do Not Find This Cache! (North Twin Cities, MN)
GC2FMD0	Castillo
GCQFW5	Skriebakken Park
GC2W84W	Mail order cache
GC2RFTB	May Challenge
GC2AV62	Dos Cientos Cincuenta
GCTHWN	Leaf Cemetary
GC2EBM7	Rice Creek Gopher it
GC2W40V	Piker finds 1000 tribute
GC2KB3C	Cup of Joe -- A Social Event
GC2KBQK	Minnesota Challenge: Cup of Joe
GC2BXW2	bobtail
GC1E69E	Aliens - The Green Planet
GC2TBT0	STAR TREK
GC227JK	494 P&G
GC2Q2W3	LPC #1
GCYW4Q	BK <---> S8
GC317R7	Turbo's Treasure
GC2BTAN	American Blvd #11 - RACO
GC1FD2P	Suburbia
GC1XWVP	dscotty55's first cache
GC2HZXH	Seven Minutes Before Six
GC1RQDD	Good For the Goose...
GC2H1TB	Neener Neener!
GC1RP39	We Cache Outdoors
GC2YXWD	Easy Credit #3
GC2KG5P	Between 2 holes
GC26FW9	Football?
GC2WJ56	walk softly and carry a big stick
GC26FWM	D5
GC28X9P	Murphy Has Landed
GC2RNXX	Wall Trail 10
GC2H6G0	Another Murphy Has Landed
GC2RNY5	Wall Trail 11
GC26FTP	EVIL DIAMONDS
GCY4EB	Veteran's Post #1
GC15J6W	LONE EAGLE @ AIRPORT PARK
GC1Z1ZE	Autumn and Lily's Cache
GC31QHT	11-11-11 Veterans day
GC2X97E	Roll of the Dice
GC2RNXK	Wall Trail 9
GC2RW5E	Wall Trail 12
GC1TFA8	Crazy Cat
GC2RNX6	Wall Trail 8
GC2RW5R	Wall Trail 13
GC2GR8F	American Blvd #10 - The Intern is here.
GC2RNX1	Wall Trail 7
GC2RNTJ	Wall Trail 2
GC2RNTD	Wall Trail 1
GC328AV	Heel
GC32JF0	Wait
GC32JF8	Stay
GC32JFC	Down
GC32JFH	Stool
GC1W0PN	Rockers: Rock and Roll
GC2GDYJ	Bloomington Civic Center #3-- Begin Here
GC32JFN	Roll Over
GC32JFV	Fetch
GC2RNTV	Wall Trail 3
GC328AP	Sit
GC32JFY	Give
GC32JG1	Shake
GC2RNWR	Wall Trail 6
GC1GWAP	Fir Protestor
GC3AYFP	Miss Noodle's "No Not in Here"
GC1RAT4	And They're Racing...
GC388R0	Bloomington Dog Park Challenge
GC2RNV4	Wall Trail 4
GC27PRB	Ned Flanders
GC393D2	12-31  FMOA (Flash Mob of America)
GC3AYFA	Mr.Popper's Walk in the Park
GC1G2XM	River Valley Park & Lock
GC2MEBV	Hoffdogs
GC2MEC5	Yellowmonsters
GC3099M	Coffee Can in the Woods - NOT!
GC33X0V	Look Both Ways!
GC7B09	Mall of America Cache III
GC2RNV9	Wall Trail 5
GC30RW9	Lucy lost it!
GC3ANQD	Miss A-Naughty's "Can We PLEEEEESE Go Play Now!"
GC1G28D	Land Bridge
GC2RGV2	Ding Dong Ding Dong
GC2KBQH	Party On The Patio  (June) -- A Social Event
GC315E0	Party On The Patio -- A Social Event (September)
GC1983E	FTF HOUNDS MN STYLE - two of hearts
GC2G0H4	4 Way Flasher #1
GC2H2T4	4 Way Flasher #2
GC1Y2X2	River Cache: Remnants
GC29A4Z	This Way Or That Way?
GC1P4NB	Fort Snelling State Park Wildlife Safari
GC2H6FN	Love - Thirsty
GC1GVPD	Are you mucluck?
GC2FEZR	4 Way Flashers #4
GC34708	MnGCA 2011 Fall Event and Election
GC1790M	Halloween Hoopla: The Cache
GC29A4M	I Love Lucy P&G
GC1HC00	DJRHJ Finds 1000!
GC2E2HG	Halloween Hoopla -- The Tradition Continues ...
GC28D14	ZeeZee The Cache
GC2ANKH	TB Hotel
GC2GRR5	LeAnn's Place
GC2Q14G	Cup of Joe-Out of Work, Full of Coffee!
GC2B1FK	Chris's Bus Stop
GC1JJVG	Cracking Up A Sailor, Tyler Style
GC37CNG	Birthday Mondays (February 2012) -- A Social Event
GC2KB21	Puff, The Magic Dragon(fly)
GC250BN	Heart of the City
GC1ENE1	Waiting for the 464
GC2MBVZ	BS 005
GC2KB22	Picking Up Paw Paws
GC2KB53	h is for hollow
GC2KBAR	Two-Kay BAR
GC19ZFD	Urban Legends
GC2MKTZ	BS 041
GC2MKV1	BS 042
GC18EE2	Elk River  Power
GC2WN7E	So Easy Deathshand77 Can Do it!
GC2TPJJ	Im Not Being Pokey!!!
GC2WN7H	Busy Intersections #5
GCZ5DM	Civics 101
GC2XQKJ	Mini Bugaboo's Lazy River
GC2XZCY	Mini Bugaboo in a Blizzard
GCN1X1	There's the PIT, but wheres the pendulum (NEW HIDE
GC12TX2	Elk River Vets Tribute
GC2XF70	Robert Fun 1
GC36BKA	OronoPark - Elk River City Parks 36
GC2XB90	Squeaky Clean
GC2XEDR	Cloe's Curious Cache Container
GC1YK6T	Orono Park Lil' Woods
GC36BKF	Orono Athletic Complex - Elk River City Parks 37
GC31V5J	MnGCA Breakfast Buddies - W. St Paul
GC1V47P	Highline Trail
GC1BG91	(How Much Is) That Doggie in the Window
GC2YJ1A	Mini Bugaboo Does Not Sweat, She Glows
GC2GHAE	Blue Light Special
GC2FMMF	The Consequences Will Never Be The Same (2)
GC1YYB2	Woodsy
GC30V8X	Dalton's Dino
GC2NGEZ	Sunset Sanctum
GC37MBF	Cup of Joe - Pumpkin Spice Edition 2011
GC1740B	Bailey Station
GC2FG8G	Hudson Woods Park
GC2HPXH	National Puzzle Day -- A Puzzle Event!
GC16Q4M	UM:14 v.2
GC1B4E3	Boone Docs
GC28K3X	Let's Play Hockey!
GC2GMFT	Hidden River Outlook
GC2P12N	MnGCA Breakfast Buddies - Lake Elmo
GC1B1X7	Hidden River
GC2GXCA	Big Lake Greenway #8
GC16N24	Cryogenic Cockroach Canister (MS-WM)
GC2GXCK	Big Lake Greenway #9
GC2GZ1N	Mitchell Greenway #1
GC2JM17	Powell Park
GC2GKCG	Stumpin'
GC2GZ0D	Another Cedar
GC29AW3	Suspicious Activity?
GC136AC	Beware of Blast
GC2ABR9	Northern Star - Many Waters - Cache to Eagle #2
GC1KX00	Tolzman
GC2YQDC	Fifty Nifty 50
GC2YQD7	Fifty Nifty 49
GC2YQD1	Fifty Nifty 48
GC2YQAR	Fifty Nifty 32
GC2YQCX	Fifty Nifty 47
GC2YQCQ	Fifty Nifty 46
GC2YQBT	Fifty Nifty 37
GC2YQC1	Fifty Nifty 38
GC2YQCN	Fifty Nifty 45
GC2YQCJ	Fifty Nifty 44
GC2YQCH	Fifty Nifty 43
GCTQQ0	It Must Have Been the Roses
GC2PRVF	A Hasty Exit
GC2YQCE	Fifty Nifty 42
GC35ND9	Hasty's Pearly Gates
GC2YQA9	Fifty Nifty 22
GC2YQA3	Fifty Nifty 19
GC2Z5J8	Cup of Joe-Hastings
GC2YQ9B	Fifty Nifty 11
GC2YQ8T	Fifty Nifty 3
GC2PW9Y	shop till you drop
GC2JQZ3	In the Park Waiting for You
GCP4X7	River Walk Park
GC28W39	I lay myself down to sleep
GC1A8N5	Fireman's Fun
GCKJ83	I-35 North Bound Rest Area (Goose Creek)
GC12JAN	School Bus Playground
GC22N10	Burger Stop I-94 TB Hotel
GC1RAT9	Scenic Overlook
GCXAQ5	Where The Saints Come Marching In!!!!!!!
GCXRP9	Gandy Dancer -- The Great Arch of St.Croix Falls
GC2BBBV	Paul Bunyan's Walleye
GC2X8D4	Downrange
GC1JMHJ	Gandy Dancer -- Zack's Cache
GC2J102	Caution:  Bridge Out
GC1PJDX	Rock point park
GC1PJEC	Way not another cache
GC1PJEH	Four Wheelers
GC2EBZR	Kanabec - County Seat Challenge
GC1BBCT	Dead Ringer
GC1YDQJ	Hwy 70 TB Motel
GCG1ZT	I-94 West Bound Rest Area (Middle Spunk Lake)
GC29EB7	Soft Drink
GC29EBM	Memorial Day
GC2WFGT	Empress of the Milky Way
GC2JGD1	STRIKE OR GUTTER?
GC11GJJ	Lost My Marbles
GCXYMC	Wobegon Trail
GC1CDWG	Welcome To Hinckley
GC1Y1VT	All the way from Utah!
GCXYMA	Getchel Creek
GC1CDWB	Caboose Park
GCJ1V1	Great Hinckley Fire
GC12X77	Smelly Cat
GC1CDXQ	Hinckley bike cache
GC1CMKQ	Team Candy Cane
GC1CDY4	End of the trail
GC2CANH	auntie's little mr man
GC2GF35	Mister Twister
GC12X87	Golden Birthday
GC13G50	Friends Forever
GC14RKM	Blondey 13
GC2GF3E	Happy Clams 2.0
GC1CPA3	Happy Clams
GCX6M4	Mennon's Secret
GC1QAPH	The Great Parking Lot
GC1QY03	Sauk River Micro
GC1QP64	Cache n Fill
GC2G8MP	Viola Lake Overlook
GCYJ77	Big Sand Secret
GCX9TV	Sinclair Lewis Interpretive Center - Mission cache
GC2W7F6	The Crippler Crossface
GC2C075	WRR 80 - County Highway E
GC2V6EB	McKenzie Lake Landing
GC18F1N	Aidan's Cache
GC1VM0W	411 Information Redux
GC12HD9	The Price of Freedom #1
GC1407M	Mystery Lake
GC330XP	Along the Watchtower
GC2F65P	Yellow River Flowage
GC2R9AJ	Swingin
GC14GQA	Railroad Memories
GC29A1R	Centennial Park
GC2GQ90	A Piece of Horace Mann
GC2J1D6	Rumpskinner Hill
GC2R99N	AC
GC1R7CW	Tadpole Corners Cache
GC8F0F	On The Road to Victory
GC2VG4Y	Gabrielle's Good-bye to Fargo Cache
GC1X4AA	Minnesota Watersheds
GC1Q6HB	Lucky's Resting Point
GC1QBME	The Big Fish  Micro Cache
GC2THGN	Cheezehead's 3rd Annual Spring Weenie Roast
GC28E7K	Shue's Pond
GC2KH8X	I bet you don't find on the 1st try.
GC22CB4	Garbage In/Garbage Out
GC1F0FD	Going "West"?
GCJ2BF	Thompson Hill TB Hotel
GC30V9B	Ashby west exit
GC1Z6ZT	Kyle's Coot
GC19AXB	FLOATING COPPER
GC2BCCZ	Uncle Harvey's Mausoleum
GC1Q9F3	Heart of a Thousand
GC1DQYP	A Fine Cache
GC2BN1W	East Hillside
GC1Q9H6	Chief Wenonga
GC21F1Q	Battle by the Lake
GC2XE45	J&C
GC1C56Z	Chester Creek
GC2QCDA	MnGCA 2011 Spring Event - Duluth
GCX9X0	I-94 West Bound Rest Area (Hansel Lake)
GC1GEEC	Prairie Lake
GCQHFV	OLD BONES
GC1K1Z1	NORSE QUEST III
GC1K1YZ	NORSE QUEST II
GC1ZQBR	That Darn Chicken
GC34DXC	EAST MINNESOTA 34
GC34DY2	ORANGE UP A POLE
GC2ZXBM	cach by the fence
GC2FJXQ	WHERE'S THE HOUSE?
GC3A5PR	close to dilworth
GC1G07T	Zero in on the 1700's
GC1X4BK	Red River of the North Valley Earthcache
GCP9QC	Fargo-Moorhead Bug-Tel East
GC30X35	Stop and Smell the Roses
GC2AEQ6	Yes! Another Pine Tree Cache.
GCR3GN	Positively 14th Street (my property)
GC30QVW	Just Park It
GC298KZ	Slow Signs
GC25AMD	Little Baa Baa
GC34PGX	12 inches
GC2B17Q	Valid Vacancy
GCXHDB	Don Quixote
GC32WB5	Retro Cache
GC3959V	Gifts of December-MCMLI
GC2H52X	Treenighet
GC1TM5T	Fairmont
GCX46J	Herd Nothing
GC15A4V	Bike: Old and New
GC218F6	Red River
GC1T334	Electric Avenue
GC2HK97	BSA 2010
GC2PD42	City Bush
GCJPGC	A Bridge Not Too Far
GC2ZEC7	Ghost Finder Challenge
GC2ZEDN	EarthCache Master Challenge
GC1TMPH	M.B. Johnson 2009
GC2EK7Z	Naturally...
GC1YATH	X - Arrh, this be the spot.
GCP9J5	Red River Trails
GC2DBNE	Just Ducky 4
GCKH87	Fargo-Moorhead Bug-Tel West
GC1YWM7	My Roots Are Showing.
GC34PH6	scream?
