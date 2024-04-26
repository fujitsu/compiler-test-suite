module m2
  implicit none
  integer :: n=2
end

module m
  implicit none
  integer :: n=10000
  interface
    module function   ksub(a,b,c,d) 
      use m2
  implicit none
      integer :: a(n,n+2)
      integer :: b(size(a,dim=2))
      integer :: ksub(size(b,dim=1),size(a,dim=2))
      integer :: c(ubound(a,dim=2))
      integer :: d(ubound(b,dim=1),ubound(c,dim=1))
    end 
  end interface
end

submodule(m)smod
contains
  module procedure ksub
    if (size(a) /= 8) print *,3,size(a)
    if (size(b) /= 4) print *,4,size(b)
    if (size(ksub) /= 4*4) print *,5,size(ksub)
    if (ubound(c,1) /= 4) print *,6
    if (ubound(d,1) /= 4) print *,7
    if (ubound(d,2) /= 4) print *,8
a=1
b=2
ksub=3
c=4
d=5
  end procedure
end

use m
integer::a(8),b(8),k(4,4),c(4),d(4,4)
k=  ksub(a,b,c,d)
if (any(a/=1)) print *,101
if (any(b(:4)/=2)) print *,102
if (any(k/=3)) print *,103
if (any(c/=4)) print *,104
if (any(d/=5)) print *,105
a=0
b=0
c=0
d=0
if (any(ksub(a,b,c,d)/=3)) print *,104
if (any(a/=1)) print *,111
if (any(b(:4)/=2)) print *,112
if (any(k/=3)) print *,113
if (any(c/=4)) print *,114
if (any(d/=5)) print *,115
print *,'pass'
end
