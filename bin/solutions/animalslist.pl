
my $data;

while(<DATA>){
	chop;
	$data->{ lc $_}++
}
use Data::Dumper;
print join "|",  keys %$data;
__DATA__
Aardvark
aardvark
Aardvark
addax
Alligator
alligator
Alligator
Alpaca
alpaca
Alpaca
American Bison
American Bison
Buffalo
Ant
Ant
Anteater
anteater
Anteater
Antelope
antelope
Antelope
aoudad
Ape
ape
Ape
argali
Armadillo
armadillo
Armadillo
ass
Ass
Donkey
Ass
Donkey
Baboon
baboon
Baboon
Badger
badger
Badger
Barracuda
Barracuda
basilisk
Bat
bat
Bat
Bear
bear
Bear
Beaver
beaver
Beaver
Bee
Bee
Bee
bighorn
Bison
bison
Bison
Bison
Boar
boar
Boar
budgerigar
Buffalo
buffalo
Buffalo
Buffalo
bull
bunny
burro
Bush baby
Bush baby
Butterfly
Butterfly
Camel
camel
Camel
canary
capybara
Caribou
caribou
Caribou
Cat
cat
Cat
Caterpillar
Caterpillar
Cattle
chameleon
Chamois
chamois
Chamois
Cheetah
cheetah
Cheetah
Chicken
Chicken
Chimpanzee
chimpanzee
Chimpanzee
Chinchilla
chinchilla
Chinchilla
chipmunk
civet
Clam
Clam
coati
Cobra
Cobra
Cockroach
Cockroach
Cod
Cod
Fish
colt
cony
Cormorant
Cormorant
cougar
cow
Coyote
coyote
Coyote
Crab
Crab
Crane
Crane
Crocodile
crocodile
Crocodile
Crow
crow
Crow
Deer
deer
Deer
dingo
Dinosaur
Dinosaur
doe
Dog
dog
Dog
Dogfish
Dogfish
Dolphin
Dolphin
Donkey
donkey
Donkey
dormouse
Dove
Dove
Dragonfly
Dragonfly
dromedary
Duck
Duck
Mallard
duckbill
Dugong
dugong
Dugong
Eagle
Eagle
Echidna
Echidna
Eel
Eel
Eland
eland
Eland
Elephant
elephant
Elephant
Elephant seal
Elephant seal
Elk
elk
Elk
wapiti
Emu
Emu
ermine
ewe
Falcon
Falcon
fawn
Ferret
ferret
Ferret
Finch
finch
Finch
Fish
fish
Fish
Fly
Fly
Fox
fox
Fox
Frog
frog
Frog
Gaur
Gaur
Gazelle
gazelle
Gazelle
gemsbok
Gerbil
Gerbil
Giant Panda
Giant Panda
gila monster
Giraffe
giraffe
Giraffe
Gnat
Gnat
Gnu
gnu
Gnu
Goat
goat
Goat
Goose
Goose
Gopher
gopher
Gopher
Gorilla
gorilla
Gorilla
Grasshopper
Grasshopper
grizzly bear
ground hog
Grouse
Grouse
Guanaco
guanaco
Guanaco
Guinea fowl
Guinea fowl
Guinea pig
guinea pig
Guinea pig
Gull
Gull
Hamster
hamster
Hamster
Hare
hare
Hare
hartebeest
Hawk
Hawk
Hedgehog
hedgehog
Hedgehog
Heron
Heron
Hippopotamus
hippopotamus
Hippopotamus
hog
Hornet
Hornet
Horse
horse
Horse
Human
Human
Hummingbird
Hummingbird
Hyena
hyena
Hyena
ibex
Iguana
iguana
Iguana
impala
Jackal
jackal
Jackal
Jaguar
jaguar
Jaguar
Jay
Bluejay
Jellyfish
Jellyfish
jerboa
Kangaroo
kangaroo
Kangaroo
kid
kinkajou
kitten
Koala
koala
Koala
Komodo dragon
Komodo dragon
koodoo
Kouprey
Kouprey
Kudu
Kudu
lamb
Lark
Lark
Lemur
lemur
Lemur
Leopard
leopard
Leopard
Lion
lion
Lion
lizard
Llama
llama
Llama
Lobster
Lobster
Locust
Locust
Loris
Loris
Louse
Louse
lovebird
lynx
Lyrebird
Lyrebird
Magpie
Magpie
Mallard
Mallard
Mallard
Manatee
Manatee
mandrill
mare
marmoset
marten
Meerkat
Meerkat
Mink
mink
Mink
Mole
mole
Mole
mongoose
Monkey
monkey
Monkey
Moose
moose
Moose
Mosquito
Mosquito
mountain goat
Mouse
mouse
Mouse
Mule
mule
Mule
musk deer
musk-ox
muskrat
mustang
mynah bird
Narwhal
Narwhal
Newt
newt
Newt
Nightingale
Nightingale
ocelot
Okapi
okapi
Okapi
Opossum
opossum
Opossum
orangutan
Oryx
oryx
Oryx
Ostrich
Ostrich
Otter
otter
Otter
Owl
Owl
Ox
ox
Ox
Oyster
Oyster
Panda
panda
Panda
Bear
Panther
panther
Panther
parakeet
Parrot
parrot
Parrot
Partridge
Partridge
Peafowl
Peafowl
peccary
Pelican
Pelican
Penguin
Penguin
Pig
pig
Pig
Pigeon
Pigeon
Platypus
platypus
Platypus
polar bear
Pony
pony
Pony
Porcupine
porcupine
Porcupine
Porpoise
porpoise
Porpoise
Prairie Dog
Prairie Dog
prairie dog
Prairie Dog
pronghorn
puma
puppy
quagga
Quelea
Quelea
Rabbit
rabbit
Rabbit
Raccoon
raccoon
Raccoon
Rail
Rail
Ram
ram
Ram
Rat
rat
Rat
Raven
Raven
Red deer
Red deer
Red panda
Red panda
Reindeer
reindeer
Reindeer
caribou
reptile
Rhinoceros
rhinoceros
Rhinoceros
roebuck
Rook
Rook
Salamander
salamander
Salamander
Sand Dollar
Sand Dollar
Sea lion
Sea lion
Sea Urchin
Sea Urchin
Seahorse
Seahorse
Seal
seal
Seal
Seastar
Seastar
Serval
Serval
Shark
Shark
Sheep
sheep
Sheep
Shrew
shrew
Shrew
silver fox
Skunk
skunk
Skunk
sloth
Snail
Snail
Snake
snake
Snake
Spider
Spider
springbok
Squid
Squid
Squirrel
squirrel
Squirrel
stallion
steer
Stinkbug
Stinkbug
Swallow
Swallow
Swan
Swan
Tapir
tapir
Tapir
Tarsier
Tarsier
Termite
Termite
Tiger
tiger
Tiger
Toad
toad
Toad
Trout
Trout
Turkey
Turkey
Turtle
turtle
Turtle
vicuna
Vicu�a
Vicu�a
Wallaby
Wallaby
Walrus
walrus
Walrus
wapiti
warthog
Wasp
Wasp
Bee
Water buffalo
Water buffalo
waterbuck
Weasel
weasel
Weasel
Whale
whale
Whale
wildcat
Wolf
wolf
Wolf
wolverine
Wombat
wombat
Wombat
woodchuck
Woodpecker
Woodpecker
Worm
Worm
Wren
Wren
Yak
yak
Yak
Zebra
zebra
Zebra
zebu