
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "All the Pinto components in one shot",
  "dist_author" => [
    "Jeffrey Ryan Thalhammer <jeff\@imaginative-software.com>"
  ],
  "dist_name" => "Task-Pinto",
  "dist_version" => "0.003",
  "license" => "perl",
  "module_name" => "Task::Pinto",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "App::Pinto" => 0,
    "Dist::Zilla::Plugin::Pinto::Add" => 0,
    "Pinto" => 0,
    "Pinto::Remote" => 0,
    "Pinto::Server" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
