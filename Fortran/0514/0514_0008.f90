module mod1
         type, abstract :: abst01
         contains
            procedure(i_iter_get_name), deferred,nopass:: get_name
         end type abst01

         type, abstract :: x01
         contains
            procedure(i_iter_get_name), deferred,nopass:: get_name
         end type x01
         type, abstract :: x02
         contains
            procedure(i_iter_get_name), deferred, nopass:: get_name
         end type 

         abstract interface
            function i_iter_get_name(is) result(iname)
            end function i_iter_get_name
         end interface
end
module m1
use mod1
type,ABSTRACT,extends(abst01) :: ty1
integer :: kk
      contains
        procedure,nopass :: init
end type
contains
    subroutine init(dmy, num)
        class(ty1) :: dmy
        integer :: num
        dmy%kk = num
    end subroutine
end
subroutine sub()
use mod1
use m1
class(abst01),pointer    :: str1
end 

use mod1
call sub()
       print *,'pass'
       end

            function i_iter_get_name(is) result(iname)
iname=is
            end function i_iter_get_name
