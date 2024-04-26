module m2
  implicit none
  integer :: n=2
end

module m
  implicit none
  integer :: n=10000
  interface
    module function   ksub(a,b) 
      use m2
  implicit none
      integer :: a(n,n+2)
      integer :: b(size(a,dim=2))
      integer :: ksub(size(b,dim=1),size(a,dim=2))
    end 
  end interface
end

submodule(m)smod
contains
  module procedure ksub
    if (size(a) /= 8) print *,3,size(a)
    if (size(b) /= 4) print *,4,size(b)
    if (size(ksub) /= 4*4) print *,5,size(ksub)
a=1
b=2
ksub=3
  end procedure
end

use m
integer::a(8),b(8),k(4,4)
k=  ksub(a,b)
if (any(a/=1)) print *,101
if (any(b(:4)/=2)) print *,102
if (any(k/=3)) print *,103
a=0
b=0
if (any(ksub(a,b)/=3)) print *,104
if (any(a/=1)) print *,111
if (any(b(:4)/=2)) print *,112
if (any(k/=3)) print *,113
print *,'pass'
end
