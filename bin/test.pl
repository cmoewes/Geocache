use Geocache;
use Data::Dumper;

my $ga = Geocache->create('Alphabet', {});

warn $ga->letter_to_number('a');

warn sprintf('%s%s%s %s%s%s-%s%s%s%s', $ga->number_to_letter('6128678620'));

use Lingua::EN::Nums2Words;

warn Lingua::EN::Nums2Words::num2word('45.514948');