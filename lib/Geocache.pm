package Geocache;
use MooseX::AbstractFactory;
implementation_class_via sub { join '::', __PACKAGE__, shift };

1;