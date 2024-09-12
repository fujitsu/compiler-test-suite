module m1
 interface
  integer function   gnr2()
  end function  
 end interface

 type gnr
    character :: c
 end type
end module

module m2
 use m1

 contains
  integer function   s1(d)
    integer :: d
    s1=d
  end function  
end module

module m3
 use m2

 interface gnr
    procedure :: gnr2,s1,s2
 end interface

 contains
  real function   s2(d)
    real :: d
    s2=d
  end function  
end module

use m3
print*,gnr('a')
print*,gnr()
print*,gnr(2)
print*,gnr(2.5)
end

integer function   gnr2()
  gnr2=23
end function  
