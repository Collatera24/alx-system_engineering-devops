#!/usr/bin/pup
# Installation of flask version 2.1.0
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip'
}

