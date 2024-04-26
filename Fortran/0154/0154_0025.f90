module m1
   interface 
      subroutine s01
      end subroutine
   end interface
end
module m2
use m1
interface gnr
  procedure  s01
end interface
contains
subroutine ss
end subroutine ss
end 
use m1
use m2,only: ss
interface gnr
  procedure  s01
end interface
call ss
call gnr

print *,'pass'
end
      subroutine s01
      end subroutine
