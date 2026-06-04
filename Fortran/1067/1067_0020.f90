module km
 type :: foo
    private
 integer :: ii=8
 contains
    private
    procedure :: times => times_foo
    generic :: gnr=>times
end type
private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  module function   s1(this_pp) result(r)
type(foo)  :: this_pp
type(foo),allocatable  :: r
end
  end interface
contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function
end
submodule(km)smod
contains
  module procedure  sub
type(foo)  :: this_pp
type(foo),allocatable  :: r
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_pp%gnr  (1) .NE. 9) print*,"126"
 r=s1(this_pp)
 if(r      %ii       .NE. 8) print*,"124"
 if(r      %times(1) .NE. 9) print*,"125"
 if(r      %gnr  (1) .NE. 9) print*,"126"
end
end
submodule(km:smod) dmod
contains
  module procedure  s1
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_pp%gnr  (1) .NE. 9) print*,"126"
 allocate(r)
  end
end
use km
call sub
 print*,"sngg407o : pass"
end program


