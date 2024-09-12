module xxxf
  use iso_c_binding
  abstract interface
     integer(c_int) function mapfn() bind(c)
       use iso_c_binding
       implicit none
     end function mapfn
  end interface

contains

  integer(c_int) function foo(m) result(zz)
    procedure(mapfn) :: m
    type(c_funptr)::fp
    procedure(mapfn) :: mm
   

       fp = c_funloc(m)
       call sub(m)
       call sub2(loc(m))
       k=   m()
       if (k/=1) print *,202
   if (.not.c_associated(fp)) print *,201

    zz = 0
  end function foo

end module xxxf
use xxxf
    procedure(mapfn) :: mm
if (foo(mm)/=0) print *,'202'
print *,'pass'
end

     integer(c_int) function mm() bind(c)
       use iso_c_binding
       implicit none
       mm=1
     end function mm

subroutine sub(m)
use xxxf
    procedure(mapfn) :: mm
interface
     integer(c_int) function m() bind(c)
       use iso_c_binding
       implicit none
     end function 
end interface
   if (loc(m)/=loc(mm)) print *,211
end
subroutine sub2(m)
use xxxf
integer(8) m
    procedure(mapfn) :: mm
   if (m/=loc(mm)) print *,221
end


