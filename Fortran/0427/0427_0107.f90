module mm
contains
function ifun()
end function
end
      module m
use mm
      procedure(ifun),pointer::aaa
      end module

module mod1
use m
private
end

module mod2
use m,only : aaa
end

module mod
use mod1
use mod2
end

use mod
      print *,'pass'
      end
