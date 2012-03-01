#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my $data;
while(<DATA>){
    chop;
    my @w = split "\t";
    $data->{$w[0]} = $w[1];
}

foreach my $name(@ARGV){
    foreach my $k(keys %$data){
	if($data->{ $k } =~ m/\b${name}s?\b/){
	    print "$name\t$k\t$data->{$k}\n";
	}
    }
}

__DATA__
GC3A40F	room for one more in the park!
GC2XQKJ	mini bugaboo's lazy river
GCJPGC	a bridge not too far
GCZT99	bredesen's secret
GC218F6	red river
GC1XHTH	one for the numbers
GC1JWT0	meadow park 7
GCTHWN	leaf cemetary
GC2BH81	the lunch money cache
GC2MWF9	narrow sighted
GC1P5WH	2,212∞c
GC2YQCE	fifty nifty 42
GC35C7Q	vindogs power trail!!
GC12HD9	the price of freedom #1
GC2EBZR	kanabec - county seat challenge
GC2MEVH	no-name
GC2YQD1	fifty nifty 48
GC2VQJX	and they're off...
GC2RW80	walker park
GC1FRTA	pop fly
GC2XF70	robert fun 1
GC1QP64	cache n fill
GC1JNBW	tws does 1000 at alp
GC28E7V	baby bear's backyard p-n-g
GC2AD5H	no parking, no outlet
GC29A4Z	this way or that way?
GCXRP9	gandy dancer -- the great arch of st.croix falls
GC29JZX	say good night grace-e?
GC16HJ7	the guard
GC2Q14G	cup of joe-out of work, full of coffee!
GC24WRY	paperrockscissors
GC203ZR	i let you call me stevesy...
GC1WQ27	basset creek png
GCQHFV	old bones
GCYR4V	aquila park 3
GC2XY4V	50% off, printed materials
GC2KB53	h is for hollow
GC2500J	stargate p4493 - twin cities
GC27TAG	awesome greenway trails #1
GC1C5RR	first coniferous
GC2C1P1	world's smallest pencil
GC35897	nanu nano!!
GC2MEWK	vista plymouth
GC1P5QB	shingle creek: micro
GC36V50	south northwood
GC2CFY5	have your tickets ready!
GC31V5J	mngca breakfast buddies - w. st paul
GC25253	into the wild blue yonder
GC35C6P	jefferson hwy trail!!
GC1QQ1W	ice rocket 1000 finds tribute cache in alp
GC38BB0	f is for fridley
GC34DXC	east minnesota 34
GC29EBM	memorial day 
GC316QD	a nice walk
GC2AC2R	bring milk
GCZK5G	old mill overlook 2
GCJV38	hello there pilgrim
GC2X3GN	golden valley earthcache
GC2A2FM	jimmy hoffa's final resting place
GCZ5DM	civics 101
GC12X77	smelly cat
GC18EE2	elk river  power
GC1RF6B	power near radison
GC2340X	to red
GC2X49X	so long, and thanks for all the fish
GC1PG97	calhoun village micro
GC31J3N	just passing by
GC35VY9	hope!
GCX9TV	sinclair lewis interpretive center - mission cache
GC1FWFJ	spare time
GC2GX40	a place of peace
GC29EB7	soft drink
GC11G2C	the robbins
GC37AFK	paul bunyan was here
GC2RNXK	wall trail 9
GC2DN9A	jaum cache #4
GC29HKE	java blues cured here
GC1E4Z4	ziggy
GC330XP	along the watchtower
GC37N19	garden treasure
GC1B1X7	hidden river
GC2YQA9	fifty nifty 22
GC1PFKG	in the thicket
GC1T61N	orphan of pennsylvania woods
GC2RZ2K	knot another two!
GC2C4RZ	brooklyn parkngrab
GC32JG1	shake
GC2FG8G	hudson woods park
GCV2ZA	forgive our trespass
GC2P2BA	mikedeotis finds 1000!
GC277R9	hagemeister pond woods
GC280VR	carrot top
GC25ZQR	peep!
GC39990	o oxygen
GC2RP4D	palmer lake challenge by 3humphs.
GC1PJQ6	st. louis park demolition  #1
GC2T26V	lyrically speaking vol.6, like, totally the 80's
GC2EAQ4	grasshopper assault
GC28DH0	skirt lifter
GC1PGXR	a little piece of ep history
GC2PBEJ	duck xing
GC2T53Q	pond view
GC26ME4	tuxedo
GC1TM5T	fairmont
GC2EDBK	jaum cache #8
GC2QP2C	nÈe
GC2H85G	cup of joe springbrook
GC2TBT0	star trek
GC1K3KJ	welcome to st. louis park
GC2T26H	lyrically speaking vol.4, 50's early rock
GC25AMD	little baa baa
GC36BKA	oronopark - elk river city parks 36
GC2MAFM	mngca family pizza night
GC317R7	turbo's treasure
GC2F65P	yellow river flowage
GC2WN7H	busy intersections #5
GC32JFH	stool
GC2YQCH	fifty nifty 43
GC2MYHR	cup of joe-spring has sprung!
GC23DWN	hey, nice ascii
GC336NB	come meet the aussies! show time
GC1CRDE	lucy lu pooh
GC1NGV3	anoka skyline
GC1C4KH	you light up my life
GC2YQCX	fifty nifty 47
GC1VK89	center field
GC2PW9Y	shop till you drop
GC1R2HP	a change
GC2DHKY	park and walk and grab
GC2D3MD	dance your backside off.
GC113BK	audio/visual sudoku
GC38BM6	another visit to duck pond
GC1VJ49	path to cul-de-sac??
GC12JAN	school bus playground
GC1NMV6	d2bb2 - norwegian wood
GC1CMXN	it's almost over 2!
GC2RGV2	ding dong ding dong
GC1R7CV	a & m's first hide.
GC1P4NB	fort snelling state park wildlife safari
GC35GVW	tool-time
GC1J618	mt normandale cache
GC1W0PN	rockers: rock and roll
GCQ5CX	bikeathon - friends
GC2X3GQ	cito speedo
GC1QRMZ	shelter
GC2RQ6F	knot another one!
GC1Y1VT	all the way from utah!
GCQFW5	skriebakken park
GC1YK6T	orono park lil' woods
GC1X4BK	red river of the north valley earthcache
GC2WK8E	minnetonka border
GC2VVYT	april challenge - jail break
GC27HGD	lock nessa's place
GC14RKM	blondey 13
GC1338H	green thumbs
GC20PZ5	30 minute limit
GC2RN47	the rusty skirt
GC2FY07	melody lake trio: ruff-ruff
GC2RNV4	wall trail 4
GC148X3	394 and 73
GC2E20F	big willow 12
GC1GQRP	french regional park - dog cache
GC263BQ	osseo time
GC2HPXH	national puzzle day -- a puzzle event!
GC1YWM7	my roots are showing.
GC1PJEC	way not another cache
GC37AF8	iron horse passing by
GCKH87	fargo-moorhead bug-tel west
GC2BXW2	bobtail
GCKJ83	i-35 north bound rest area (goose creek)
GC1NKQP	d2bb1 - do the twist
GC29A1R	centennial park 
GC13K34	t and a: warrior women: carol
GC29A4M	i love lucy p&g
GC2FHXF	walk along the path
GC2J417	one more in the park
GC36ZAF	my first puzzle
GC2DBNE	just ducky 4
GC1XBX8	crystal arts project
GC343E1	creekish view
GC2Z5J8	cup of joe-hastings
GC2VG4Y	gabrielle's good-bye to fargo cache
GC2Y0B0	foamy's stash!
GC35C7C	quit smurfin around!!
GC2X3GP	cito greedo
GCQZ49	bren there, done that
GC1Y9F5	south oak lake
GC315E0	party on the patio -- a social event (september)
GC19ZFD	urban legends
GC11GJJ	lost my marbles
GC2THGN	cheezehead's 3rd annual spring weenie roast
GC2MEVP	what's the point of curtis?
GC1CQ2G	turtle lake stump-lifter
GCWQQY	office space
GC39FZ9	baker road 02
GC2WEEE	melody lake trio: quack quack
GC2EVYV	for the love of coffee!
GC1W6BT	salmagundi
GC1P029	water logged at palmer lake
GC2GXP7	mouse house
GC4C5C	west palmer lake park
GC1CDY4	end of the trail
GC36VJ8	ms sunshine finds 1000!
GC2PVKJ	flat among many
GC1J6FQ	it's so wirth it!
GC2QKXA	speaking of christmas
GC23X1Q	thanks!
GC1QDYJ	probsfield panthers
GC29H4D	what happened to the hotel??
GC2GZ1N	mitchell greenway #1
GC29WNG	u-neek cache
GC35NC4	holy cache!
GC1N6X7	palmer lake view
GC1K3JW	another freakin' creekin' cache
GC2RNTJ	wall trail 2
GC25DJA	sticks
GCG1B7	lilac park
GCJ3WZ	squares of magic
GCJC6H	exonumia: bowl-a-strike
GC2R26B	and lastly, atlantis
GC21Q0P	aquadore
GC2TPJJ	im not being pokey!!!
GC3959V	gifts of december-mcmli
GC2RWV1	500 with gusto!
GC2HJPX	bus ride to nowhere...
GC34PH6	scream?
GC26V42	only outdoors!
GC1K1YZ	norse quest ii
GC26GT0	mcguire park mystery
GC14BDV	seventeen
GC22ZHY	my first hide
GC1X43F	dipo 3
GCYYHJ	connie≤
GC2A3ZR	who's barry badrinath?
GC1P869	crystal lake beach
GC2H2T4	4 way flasher #2
GC1CFTZ	east bryant lake bionicles
GC1Y2X2	river cache: remnants
GC2W7F6	the crippler crossface
GC37404	scream hide
GC206QK	don't trip or slip - french regional park
GC32P9E	ginger fist
GCM4GR	laurel hill west
GCVED9	bikeathon - curves 2
GC1PC5P	oak hill view
GC2W84W	mail order cache
GC33EQZ	sweet little tweet
GC21F1Q	battle by the lake
GC1B49B	i wanna be a pony in ponyville
GC1407M	mystery lake
GCR3F6	the evil micro experiment
GC18AQM	humboldt greenway
GC2B5XF	melody lake trio: middle child
GC1P7X7	camden light and power
GC1NM13	locktopus octopus - french regional park
GC17A79	park & ride
GC2QDKM	challenge: get to know your fellow cachers
GC1NZ8W	d2bb5 ‚Äì take it to the limit
GC1983E	ftf hounds mn style - two of hearts
GC1RREV	hemlock park
GCXYMC	wobegon trail
GC1JJEV	psychedelia: when i was young
GC2YQBT	fifty nifty 37
GC1YFXB	indigo
GC15M2R	fowl play
GC1RQDD	good for the goose...
GC1K1Z1	norse quest iii
GC30XGA	knot another knotty pine!
GC2H54Z	emily dickinson: american giant
GC2RW5R	wall trail 13
GC3589P	coming into osseo!
GC1T80R	river cache: poolside
GC701A	a sad little park cache
GC22556	follow little h to work
GC27GTX	"so he say's 'no i went to a community college!'"
GC26FW9	football?
GC22GPM	5 and dime store
GC2MEW8	cache a falling star
GC1G02W	circle me bert - side trail
GC2GRR5	leann's place
GC35GV6	mechanical nightmare
GC270Z6	teenager cache
GC8B17	earle brown heritage center
GC2K7V9	bring a geo-monkey (to slay the serpent...)
GC2CBVB	labguy's evil overlook
GC1T78X	iron horse park
GC1TMPH	m.b. johnson 2009
GC1QY03	sauk river micro
GC2MDHD	the adventures of cacheman: episode 8
GC2HYMK	it is finished!
GC26FTP	evil diamonds
GC25YWR	g: minnehaha creek preserve 2
GCXHDB	don quixote
GC1XMWD	medley pines
GC2H69X	woody - take 2
GC1TBH1	whistle stop
GC29J84	light cache
GCX46J	"herd" nothing
GC1Z203	cal marvin - warroad, mn
GC2MEWF	the taming of the screw
GC1T8D5	adams hill park
GC1DQYP	a fine cache
GC32JFN	roll over
GC2MJJH	warning! contents under pressure!
GC26BW2	for lexi
GC1AXNG	magic mirror (moved 6/17/10)
GC27X7K	creek's edge
GC1GVPD	are you mucluck?
GC271Z3	bass creek park post a log
GC31T1P	mount maple grove
GC2KBQH	party on the patio  (june) -- a social event
GCQ5CW	bikeathon - trolley
GC1P94M	leaving goose poop
GC1E69E	aliens - the green planet
GC2H52X	treenighet
GC2H0TD	tribute to tonkamn's 1,000th find 
GC2FXPJ	adventures in geocaching
GC7F8C	tougher to plunder
GC1NM18	trusty rusty - french regional park
GC1G28D	land bridge
GC31B80	come meet the aussies! (dress rehearsal)
GC25AEV	the adventures of cacheman: episode 2
GC2RNX1	wall trail 7
GC227JK	494 p&g
GC2XBGQ	lyrically speaking  vol. 10, motown
GC1J612	8400 tower
GC2Q7D9	thomas edison: american giant
GC256FW	tree fiddy
GC38KJM	sparkyfry 5k tribute!
GC2YQCJ	fifty nifty 44
GC2WJ56	walk softly and carry a big stick
GC2FNW6	beyond the ho ho
GC2362Q	sharknose bunnies finds 1,000!
GC2W2QY	lyrically speaking vol.8, what is a mondegreen?
GC29F0C	captcha cache
GC1DCC7	french regional park
GC2W2QT	lyrically speaking vol.9, the 90's
GC37T31	4 tons
GC1P7ZV	crystal lake view
GC136AC	beware of blast
GC22X5T	city hall
GCQ5D2	bikeathon - muggled?
GC1VX4Q	zoom zoom
GC2EBM7	rice creek gopher it
GC389FN	11-11-11
GC21F0M	welcome to 47th
GC1EDYF	out of bounds at welcome
GC8F0F	on the road to victory
GC3589B	i wish my fingers were smaller!!!
GC30V9B	ashby west exit
GCVV7X	baseball seat
GC1VYY9	another quick p & g
GC36XPV	"walk the plank, cacher!"
GC1C56Z	chester creek
GC11RJR	chancellor of the exchequery geocoin exchange bank
GC1F0FD	going "west"?
GC20FBH	ho ho ho
GC1KX00	tolzman 
GC2BCCZ	uncle harvey's mausoleum
GC21GCJ	it's a flat out lie!
GCNHMN	in honor of r.j.
GC1R7CW	tadpole corners cache
GC1J6JE	hockey sticks not bombs kiosk
GC2C075	wrr 80 - county highway e
GC1T334	electric avenue
GC216HT	lee park stroll
GC27AJQ	bobo
GC15J6W	lone eagle @ airport park
GC1JMHJ	gandy dancer -- zack's cache
GCQ5D6	bikeathon - rocks
GC2YQD7	fifty nifty 49
GC1H020	twin lakes
GC21C2W	the golden one
GC13G50	friends forever
GC69CC	great local park
GC2X3HB	don't blink
GC2QCDA	mngca 2011 spring event - duluth
GC2F30N	mngca's saturday night pizza night!
GC12TX2	elk river vets tribute
GC282XP	don't wee on the greenway!
GC26GRM	stopping by woods
GC2EC22	jaum cache #7
GC16YY4	rickrich's 5000+ finds tribute cache
GCJ2BF	thompson hill tb hotel
GC2MFVC	woody's round up
GC1XHT8	5951
GC2RWVY	in the sticks
GC1VD5Z	don't weep for me, aquatore
GC1CDXQ	hinckley bike cache
GC2N53P	jessica approved png
GC1CMKQ	team candy cane
GC322WD	laffy taffy jeopardy:  "silicon valley population"
GC2YJ1A	mini bugaboo does not sweat, she glows
GC26H9B	size matters
GC32JGB	minnesota state fish: walleye pike
GC29HHV	aaron greenwald or josiah king?
GC1QAPH	the great parking lot
GC1CDWG	welcome to hinckley
GC39N4C	baker road 07
GC2F7V1	louis braille
GC1T78Q	lions and tigers and ducks, oh my!
GC2BJEC	home of the friendly fox
GC1YAB4	johnny cache
GC2MBVZ	bs 005
GC2GTJ8	z lamplighter
GC24K1X	village of lost souls
GC2C0RQ	is that what i think it is??
GC1T3BV	cache in the woods
GC32KW9	keep on truck'in!  #2
GC2RNTV	wall trail 3
GC25G5K	reptile's mega cache
GC19AXB	floating copper
GC35C7P	rusty bottoms 
GC1T0T6	mid northwood
GC2598G	exact change only!
GC2YXWD	easy credit #3
GC2RZ0N	knot really a knot
GC2B17Q	valid vacancy
GC192P0	cache of the millennium
GC2HE5E	it"s got to be here "somewhere"
GCX9X0	i-94 west bound rest area (hansel lake)
GC2MBNC	nerd wars
GC1GWAP	fir protestor
GC37AF2	following red_devil
GC1Z1ZE	autumn and lily's cache
GC7B09	mall of america cache iii
GC2QZMQ	mngca breakfast buddies -  brooklyn park
GC2BTAN	american blvd #11 - raco
GC1790M	halloween hoopla: the cache
GC2BMBN	into the light of the dark black night
GC27R8C	surrounded by docks with no lake in sight
GC2E54V	not a scenic view
GC2AV62	dos cientos cincuenta
GC2MKV1	bs 042
GC2J1MN	green camo puzzle (remix)
GC2MEVY	lightning never strikes twice?
GC2WEX0	lyrically speaking vol.7, the 70's
GC1YDQJ	hwy 70 tb motel
GC2H80P	creekwood park crowd
GC30X35	stop and smell the roses
GC32JF8	stay
GC1ENE1	waiting for the 464
GC1PCJW	between perry and orchard
GCR3GN	positively 14th street (my property)
GC2HFZB	5-23-07
GC2G33M	sittin' n cachin'
GC2QKXK	reserved parking
GC29H3Q	right lane ends soon
GC20F21	tipped shot
GCTV6V	vernon hill
GC2C3AR	as in "labrador guy"
GC26MEA	a dream of sunshine
GC2GP0T	boo!! it's almost halloween!
GC2RWWM	arroyo
GC2BMCN	micro in the woods
GC2Q2W3	lpc #1
GCG1MH	blazer park
GC1VE41	basset  bamboozle (byop)
GC2BBBV	paul bunyan's walleye
GC28D14	zeezee the cache
GC19H1H	quite a nice place to sit
GC2J5JP	first snow cache
GC37AFD	you are here ->
GC32JFY	give
GC283NA	stop whining
GC1ZQBR	that darn chicken
GC2JM17	powell park
GC2GJW3	offsides!
GC1NTBB	low bow - french regional park
GC2T14N	lyrically speaking vol.1, by 3humphs
GC1PBJA	d2bb7 - ticket to ride
GC2GF35	mister twister
GC2J9XE	cup of joe, a time to relax
GC1T790	keep on the sunnyside
GC2YQAR	fifty nifty 32
GC2YQ8T	fifty nifty 3
GC1HC00	djrhj finds 1000!
GC2EDVY	no outlet 2: path side
GCXAQ5	where the saints come marching in!!!!!!!
GC2KB22	picking up paw paws
GC17EWH	a walk in the woods 3
GC1G031	circle me bert - woods
GC328AP	sit
GC2AC47	bookworm
GC1RVYA	bc - kylawn jungle
GC2M2TJ	for the man with one glove and a racoony hat
GC2BN8J	shake and bake cache
GC39BWJ	nitrogen, etc.
GC1QQ1Y	minnstars 1000 finds tribute cache in alp
GC22F4C	the art of transcription
GC2KBAR	two-kay bar 
GC2ZEC7	ghost finder challenge
GCP4X7	river walk park
GC351GT	a picture is worth 100 monkeys
GC23AK1	unequivocally (without a doubt) puzzle valley
GC1YYB2	woodsy
GC2X3GT	cito guido
GC2H8K3	don't forget water
GC36V3T	east northwood
GC2Y605	nobody has more fun
GC21BYX	go fish
GC2KBQK	minnesota challenge: cup of joe
GCV846	two legged tree
GC1YW37	exif
GC6DD3	for whom the bell tolls
GC38M73	laffy taffy jeopardy:  "holmium on the range"
GCJ1V1	great hinckley fire
GC1QT53	duch finds 1000
GC2CFG0	elk river earthcache
GC3536Y	another creek cache
GC2YXYT	mngca's summertime family pizza night
GC2AG9B	dog walk
GC1YATH	x - arrh, this be the spot.
GC25257	another for the kids
GC1PJDX	rock point park
GC34P48	dt&h
GC2422H	twin oaks memorial park
GCXV24	near hole #1
GC21CRM	minnstars:  the 2500/50 club
GC2P12N	mngca breakfast buddies - lake elmo
GC2C4T8	misery loves companies
GC281WX	c: cedar lake runoff pond 2
GC2GMFT	hidden river outlook
GC1XKRM	yunkers park
GC39FZ7	baker road 01
GC1GEEC	prairie lake
GC2224N	circling the drain
GC2W40V	piker finds 1000 tribute
GCTQQ0	"it must have been the roses"
GC237B4	cinemas 20 #2
GC289AT	walk down...memory lane
GC2R26Y	hartkopf - may day
GC1246C	why? why not!
GC2RNX6	wall trail 8
GC10KA3	stand tall
GC1QYAH	happy birthday!
GC2H6FN	love - thirsty
GC1HXJ5	heritage park
GC2VCHE	mmmmmmmm ice cream (plymouth edition)
GC2VH0Z	frosty mug of cache
GC2BAYV	the first commandment
GC114W3	a.k.a. mud lake
GC343M6	the weeping cache
GC2MZ4T	victory memorial drive
GC1PJEH	four wheelers
GC25PER	"h" is for hopkins
GC27RAR	where it began!
GC2YQCQ	fifty nifty 46
GC1B5M5	sorry ma, forgot to take out the...........
GC1F8A2	island in a sea of asphalt
GC15XXP	the docter inn on bryant lake
GC28VRX	dead end . . .?
GC37AF4	kcuddoowekard
GC2GMH5	stink outside
GC1B4E3	boone docs
GC2RNXX	wall trail 10
GC2GXCA	big lake greenway #8
GCBC56	big willow too
GC15V1F	my preciousss
GC1VM0W	411 information redux
GC1WDR1	o: lone lake park access 2
GCQR36	kinsel town
GC2H9N6	wolfe  park
GC1XX56	not quite a "10"
GC2MEBV	hoffdogs
GCRG2A	pond view
GC2QZMD	is the bus late?
GC2E1JG	we are the champlins
GC23BPB	sullivan lake shelter
GC2XZCY	mini bugaboo in a blizzard
GC2AZBT	this is the shortcut, i think
GC3537Q	eerie pennsylvania woods scavenger hunt
GC2GHAE	blue light special
GC2J8F1	mn lpc series - epminnesota
GCY6GZ	once an ods cache...
GC2MEC5	yellowmonsters
GC2ERZW	don't step in it.
GC2AG0C	that's amore
GC2HZ0X	coffee, crafting, and caching
GC16YYY	holasek hills park
GC1Z957	tree line
GC28W39	i lay myself down to sleep
GC37MBF	cup of joe - pumpkin spice edition 2011
GC2JZGH	today, is a good day!
GC35FK2	let teddy read you a story!
GC1RP39	we cache outdoors
GC39N4D	baker road 08
GC1Y9Q9	on the edge of green prairie
GC27PRB	ned flanders
GC2T6J6	time for change
GC28YNA	do not find this cache! (north twin cities, mn)
GC316TY	my 1st birthday
GC2J1D6	rumpskinner hill
GC2CBTW	hurricane k!
GC14MAR	bass lake secret
GC2J17K	duck...duck...goose!!
GC2JJTQ	hail fellow, well met
GC34PGX	12 inches
GC2CY6X	deer crossing
GC1QBME	the big fish  micro cache
GC2F7TV	the duck bar
GC2E1YR	jaum cache #5
GC2RNV9	wall trail 5
GC3A5PR	close to dilworth
GC32WB5	retro cache
GC2RNTD	wall trail 1
GC2ANKH	tb hotel
GC286QF	ff fastgrab
GC1XWVP	dscotty55's first cache
GC2MKTZ	bs 041
GCP9QC	fargo-moorhead bug-tel east
GCG1ZT	i-94 west bound rest area (middle spunk lake)
GC2C055	dome sweet dome
GC26DRD	tln
GC2PH9M	where's the shopping center??
GC2ATG4	at posted coordinates
GC1XB26	skipper's idea
GC28V9F	awesome greenway trails #3
GC34EX1	celebrate seeingitdifferent's 2000th find!
GC1TBGM	dead ringer for becker
GCNYV6	rr to hopkins 2
GC2YQA3	fifty nifty 19
GC1P0QF	tribute #3 @ eagle lake (may 2005)
GC2RFTB	may challenge
GC2ZEDN	earthcache master challenge
GC2Q6MY	amelia earhart: american giant
GC2HNJN	triangle
GC2FTR5	500 in 6 months
GC14BA7	watching the world go by at sunrise
GC23QJX	for the kids - no lion
GC1TFA8	crazy cat
GC32JFC	down
GC1WNKW	jw's big air
GC1G3CF	png
GCVYPD	creekview
GC2RNWR	wall trail 6
GC1N5XM	goose poop cache group i
GC1XACW	it's almost over! - new life!
GC3589J	trail tube!!
GC35ND9	hasty's pearly gates
GC2H6G0	another murphy has landed
GC2HZXH	seven minutes before six
GC1CRA4	the 100k mini-acro celebration cache
GCA0E2	jumping "jack" flash
GC3589V	nano bargain bin!!
GC30QVW	just park it
GCYJ77	big sand secret
GC24A7Q	sparkyfry finds 2,000 caches!
GC2XJK9	circle park cache
GC18D04	freeze gopher!
GC2Y0JH	whistle stop jackson
GC2C1NK	flagstaff, arizona
GC28GQH	rum river dam, anoka
GC2XBXW	labguymn finds his 1,234th !!!
GCY4EB	veteran's post #1
GC1M2JM	boot up and stay warm !
GC2HK97	bsa 2010
GC2TABA	cache path
GC37T39	the key
GC2FQRT	mngca breakfast buddies crystal
GC28QX9	almost a p&g
GC2H4AX	prairie dog
GC2X3GK	cito barry zito
GC2V4XX	is that what i think it is? # 3
GC2A9RB	milk, bread and a what?
GC2BJTK	lee parkwood
GC1HR1A	albino tree
GC21PCF	good evening mr. & mrs. america‚Ä¶
GC3A9XW	central cite
GC31QHT	11-11-11 veterans day
GC2GA1Q	ghostdale
GC2R9AJ	swingin
GC2DB2P	no parking
GC18KP0	ryan lake cache
GCQ5D4	bikeathon - 494
GC2YQ9B	fifty nifty 11
GC2FEZR	4 way flashers #4
GC24VC2	take a stroll through robbinsdale
GC2GA7N	e. a. poe: american giant
GC2WN7E	so easy deathshand77 can do it!
GC2E54H	one rag
GC1Q1TR	hey jerry, it's the ***** pen,it still works jerry
GC39FZB	baker road 03
GC2E2HG	halloween hoopla -- the tradition continues ...
GC15A4V	bike: old and new
GC1Q9H6	chief wenonga
GC34CJ4	eagle lake regional park - from the tips
GC1FN8W	dead mans cache
GC35154	creek cache
GC2GBBG	this one is guarded
GC2B5X8	melody lake trio: tweet tweet
GC1X4AA	minnesota watersheds
GC1G2XM	river valley park & lock
GC1K9HV	psychedelia: i put a spell on you
GC1YBVR	johnny gray
GC2FMMF	the consequences will never be the same (2)
GC35VMB	can you feel it 
GC2RW6J	a mighty rushing river
GC1NCTT	goose poop cache group ii
GC1RXE9	west northwood
GC2F8KZ	aquila36
GC17AZD	folwell pines
GC26H6H	into the rabbit hole
GC16N24	cryogenic cockroach canister (ms-wm)
GC27KKW	northland cache
GC2X8D4	downrange
GC1TXVT	step up in fantasy woods
GC2PD42	city bush
GC27F1X	industrial cache
GC2RNY5	wall trail 11
GC2FMD0	castillo
GC25CN2	brookdale wetlands
GC36N5H	a ram sang
GC17BD4	the ducky pond
GC2GAD2	zen
GC22CB4	garbage in/garbage out
GC36XRK	rot
GC2GKCG	stumpin'
GC2R99N	ac
GC28F4K	queen for a day
GC2DA6K	this cache will kick your butt
GCV36Z	crosstown grid lock
GC2Q5XF	‚Äúp‚Äù marks the spot-mt. olivet chapel
GC32JGD	geocaching is going to the dogs!!
GC20FBJ	hide for heidi
GC39N4F	baker road 09
GC207EY	boy scout wreath
GC1H03A	394 and 101 s
GC2NGEZ	sunset sanctum
GC2JDYX	pow-mia
GC14GQA	railroad memories
GC161XN	nhaf cache
GC23BBB	for the birds
GC1YZZA	will you play with me?
GC2GJK3	xerophobous
GC2T261	lyrically speaking vol.3, country fried.
GC2GZ0D	another cedar
GC2ABR9	northern star - many waters - cache to eagle #2
GC3610E	tornado
GC12E10	lone lake park 6
GC22N10	burger stop i-94 tb hotel
GCHC0N	knollwood canoe landing
GC1V47P	highline trail
GC28DQE	charest micro
GC2HK42	dry your eyes
GCQ4P4	bikeathon - tonkawood
GC26FWM	d5
GC39EW8	baker road 06
GC2NZQM	klassik toonz, vol. v: total eclipse of the heart
GC2RW5E	wall trail 12
GCN1X1	there's the pit, but wheres the pendulum (new hide
GC1RVYK	bc - arboretum arbor
GC2A0RK	alone-ish
GC2CANH	auntie's little mr man
GC1V1GH	buffer park - redo
GCX6M4	mennon's secret
GC2GBN8	zonk led a crayon orchard afar
GC250BN	heart of the city
GC25G4T	the adventures of cacheman: episode 3
GC2V6EB	mckenzie lake landing
GC27F24	evil's twin cousin
GC2ACT8	mngca breakfast buddies - maple grove
GC141P3	anderson lakes
GCRD7P	foreign coins
GC2T25F	lyrically speaking vol.2, male duos
GC2BN1W	east hillside
GCXYMA	getchel creek
GC2V9YV	stuff on the sidewalk
GC22H7Q	across the lake
GC1PBKE	between orchard and perry redux
GC34DY2	orange up a pole
GC2WNK9	the boy's first cache
GC26H2N	roxy's rendezvous
GC1PV6E	wave at the cars
GC2HP0V	deisel's great wall of wwl park
GC2QBPE	3humphs finds 1,000!!!
GCHC0P	cedar manor cache
GC1RVR5	poe's micro 
GC2WFGT	empress of the milky way
GC1R96C	hon-w field
GC23W0M	audio nippon
GC35C76	queen of battle follow me!!
GC22P9T	doublemoose scores the grand slam!
GC235YB	i never promised you a rose garden
GC2KB21	puff, the magic dragon(fly)
GC298KZ	slow signs
GC37JBJ	still crazy
GC2YQDC	fifty nifty 50
GC2HYM5	where to?
GC23053	my first puzzle hide-an introduction
GC21PED	sunshine park
GC2HAJ8	nightmare on elm tree
GC2GQ90	a piece of horace mann
GC1CTEV	fourth rules "b"
GC2XE45	j&c
GC2CDHN	zap! it shocked me
GC2Q755	robert frost: american giant
GC1V4GK	fred sims resurrection
GC2C275	but why can't i have a pet??
GC39BAX	cup of joe - 2012 white elephant edition
GC39FZC	baker road 04
GC150QB	sunny side up
GC339VG	a grand tribute to spstanley
GC2GDYJ	bloomington civic center #3-- begin here
GC2T26K	lyrically speaking vol.5, female duets
GCYZA9	cash n' carrie ii
GC1M51W	it's a girl thing
GC26BJR	sharp right
GC28WFC	mngca's first ever pizza night!
GC37W3J	cito gaston
GC35C6Z	to the bat cave!
GC2R9VB	here comes the rain again
GC33X0V	look both ways!
GC2G0H4	4 way flasher #1
GC1VFJB	hagemeister pond
GC218BE	kylawn adventure
GC28E7K	shue's pond
GC23ZAV	yet another for the kids
GC30V8X	dalton's dino
GC2EYFQ	futon
GCQ3QA	on top ?
GC39N4R	baker road 05
GC19H1E	xtra bowl of cache
GC2KYMN	woody was here
GC1P98Q	neat seat - french regional park
GC3632X	slice of cache
GC2XEDR	cloe's curious cache container
GC1PC6T	end of the line pine - french regional park
GC2HQGE	what's a cache like you doing here??
GC18F1N	aidan's cache
GC2JNEJ	branching out
GC2G1AP	begin park micro 
GCRECB	bredesen park 4
GC1QDTB	nce
GC1T3BD	mn music: the suburbs
GC293EC	inspiration: angel
GC28X9P	murphy has landed
GC1NRWC	k9-crossing
GC1FK1A	leave your mark at lion's club park
GC1BG91	(how much is) that doggie in the window
GCHAKR	west metro tb inn 
GCAB11	the armory
GC1TWV3	yankee: my favorite store
GC2ETQE	icythorn42's first homerun
GC16W77	new altoids 2 
GC1Z5BP	why in the woods?
GC1P339	where could it be?
GC1Q9F3	heart of a thousand
GC263C1	osseo memorial
GCQ826	bikeathon - overlook
GC29PYW	fishin' and cachin'
GC38GF6	dots
GC2G8MP	viola lake overlook
GC2KW11	new years - lpc
GC31W2W	brooklyn51 made us do it again!
GC31JV9	finding neenah
GC206QV	earthworms & pachyderms - french regional park
GC34708	mngca 2011 fall event and election
GC226XX	klassik toonz, vol. iii: piano man
GCZ59J	on palmer pond
GC29J8D	which tree is it?
GC1W600	bibliophilia abounds
GC35895	trail whiteout!!!
GC2WA6M	cachelot
GC261Y3	peep! peep! peep!
GC36BKF	orono athletic complex - elk river city parks 37
GC1G07T	zero in on the 1700's
GC15WEY	hannon point
GC1ZEY7	kylawn jungle 2
GC1CTED	fourth rules "d"
GC28HPZ	this is no picnic at hanging rock!
GC2GF3E	happy clams 2.0
GC12X87	golden birthday
GC1W2XR	hertiage park's last geocache
GC23E0P	another quick park and grab....maybe....maybe not
GC2KH8X	i bet you don't find on the 1st try.
GC1T796	meadow lake heights
GC393D2	12-31  fmoa (flash mob of america)
GC2KB3C	cup of joe -- a social event
GC2C6HD	bbr: call a friend!
GC2HBJW	wwl park troll house
GC2C05Z	brooklyn park's lunchbreak cache
GC1W4KA	cougar cache
GC2FV8Z	x-men
GC10NTH	envy
GC2EK7Z	naturally...
GC2640R	how long is the wait?
GC2GXWT	62 view
GC6557	lucifer's elbow
GC1XPJT	derek, aaron, and pete's secret cache #1
GC2PRVF	a hasty exit
GC263YK	honey's hideout
GC1BBCT	dead ringer
GC1CDWB	caboose park
GC39GYJ	laffy taffy jeopardy: "copper nitrate"
GC2YQC1	fifty nifty 38
GC21X3M	the dead rose from the grave!
GC1P968	tinysongbird
GC2FT2Y	free money
GC2ZZB6	darmstadtium
GC2B2QJ	sharks
GC251AQ	daddy's toybox
GC1RAT9	scenic overlook
GCP9J5	red river trails
GC2AEQ6	yes! another pine tree cache.
GC2J102	caution:  bridge out
GC1ZWQ2	cb: the same thing
GC2J87J	cup of joe - the white elephant edition
GC2VJ4W	cup of joe - ridiculous hats edition
GCR404	bass lake preserve 3
GC1740B	bailey station
GC2AWPK	me tarzan, you jane
GC2797M	park here, stop ahead
GC1RAT4	and they're racing...
GC1A8N5	fireman's fun
GC328AV	heel
GC1TWQ5	all about trout
GC2GA7B	peanut butter!
GC2E2FD	animal tracks
GC283NH	pitch it over the fence.
GC1Z6ZT	kyle's coot
GCJJ58	bikeathon - curves
GC2HW6X	bronx's park hideout
GC2FJXQ	where's the house?
GC2R6Z3	cup of joe- anoka edition
GC2KG5P	between 2 holes
GC2JGD1	strike or gutter?
GC242GY	sound wall 2
GC37AET	swiss treeze
GCQ4P2	bikeathon - swamp
GC28K3X	let's play hockey!
GC2XB90	squeaky clean
GC2VK0F	give me a c - i - t - o, what's that spell?
GC1Q6HB	"lucky's" resting point
GC1HCKR	mngca board game: minnesotabrad
GC34Y22	sids 2000th find!
GC2MBG7	"p" marks the spot: saint joseph's church
GC2JAQZ	caching for insomniacs
GC296BX	quietly resting in golden valley
GC1NZ84	d2bb4 ‚Äì hooked on a feeling
GC1CPA3	happy clams
GC32JFV	fetch
GC1Q4K2	tunnel vision
GC32JF0	wait
GC2HGZJ	brooklyn51 made us do it!
GC1P19B	d2bb6 - love will keep us together
GC2ZXBM	cach by the fence
GC2CP8K	ice ice baby
GC1YACM	night reflections
GCWZ2D	three armed tree
GC255HA	qwerty2582's first (fun) hide!
GC17A7F	park & ride 2
GC2Y7Q7	gpcat
GC2JQZ3	in the park waiting for you
GC237B3	cinemas 20 #1
GC1X08G	s.o.e.m. - society of english majors - 201
GC3589E	the cammo nano!!
GC2X3GR	cito neato
GC1G03G	circle me bert - hangin out
GC2TFE0	across the pond #1
GC2MEVA	quacker queach
GC111J6	dorothy's cache
GCNE2E	turkey lurkey
GC29AW3	suspicious activity?
GC17D1F	smokin' nurses
GC5882	surveyor's error
GC2YQCN	fifty nifty 45
GC2A0D1	northern star - gabbert scout service center
GC1XKRY	got game?
GC2H1TB	neener neener!
GC2FPTV	the brewery is back here!
GCYW4Q	bk <---> s8
GC1JB53	peeping james
GC1WQ2G	valley place 
GC2X97E	roll of the dice
GC2KQ0X	1st annual mngca fantasy football awards banquet
GC21KXF	o'geocache
GC1FD2P	suburbia
GC2R681	great scott
GC2GXCK	big lake greenway #9
GCT157	lucky cows
GC2YBBK	pickle weasel
GC2G2XJ	saturday special
