package GSAK::Main::Result::Workflows;
use base 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components(qw/ Core/);
__PACKAGE__->table('workflows');


__PACKAGE__->add_columns(
    'id' => {
  'data_type' => 'int',
  'is_auto_increment' => 1,
  'default_value' => undef,
  'is_foreign_key' => 0,
  'name' => 'id',
  'is_nullable' => 0,
  'size' => '11'
},
    'tracker_id' => {
  'data_type' => 'int',
  'is_auto_increment' => 0,
  'default_value' => '0',
  'is_foreign_key' => 0,
  'name' => 'tracker_id',
  'is_nullable' => 0,
  'size' => '11'
},
    'old_status_id' => {
  'data_type' => 'int',
  'is_auto_increment' => 0,
  'default_value' => '0',
  'is_foreign_key' => 0,
  'name' => 'old_status_id',
  'is_nullable' => 0,
  'size' => '11'
},
    'new_status_id' => {
  'data_type' => 'int',
  'is_auto_increment' => 0,
  'default_value' => '0',
  'is_foreign_key' => 0,
  'name' => 'new_status_id',
  'is_nullable' => 0,
  'size' => '11'
},
    'role_id' => {
  'data_type' => 'int',
  'is_auto_increment' => 0,
  'default_value' => '0',
  'is_foreign_key' => 0,
  'name' => 'role_id',
  'is_nullable' => 0,
  'size' => '11'
},
);
__PACKAGE__->set_primary_key('id');


1;
