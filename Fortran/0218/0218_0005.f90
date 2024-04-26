module mod
integer::k1,k2
integer,parameter::k3=2
  type h  
   integer :: ii
  end type
  type ty
   type(h) :: i
  end type
  type(ty) :: x
  interface
   module subroutine sub(a,b)
   integer :: a(x%i%ii),b(x%i%ii)
   end subroutine
  end interface
end
       
submodule (mod) smod
contains
  module procedure sub
  i=k1
  ii=k2
if(i/=1 .or. ii/=2) print *,201
if (size(a)/=2) print *,202
if (x%i%ii/=2) print *,302
if (k3/=2) print *,305
if (any(a/=3)) print *,303
if (any(b/=3)) print *,304
  end
end

use mod
   integer :: a(2),b(2)
x%i%ii=2
a=3
b=3
k1=1
k2=2
call sub(a,b)
print *,'pass'
end
