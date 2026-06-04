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
type,extends(abst01) :: ty1
integer :: kk
      contains
            procedure, nopass:: get_name
        procedure,nopass :: init
end type
contains
    subroutine init(dmy, num)
        class(ty1) :: dmy
        integer :: num
        dmy%kk = num
    end subroutine
            function get_name(is) result(iname)
              iname=0
            end function
end
module nn
use m1
  private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end
submodule(nn)smod
contains
  module subroutine sub
class(ty1   ),pointer    :: str1
allocate(str1)
call str1%init(str1,1)
end 
end 

use nn   
call sub()
       print *,'sngg975n : pass'
       end

            function i_iter_get_name(is) result(iname)
iname=is
            end function i_iter_get_name
