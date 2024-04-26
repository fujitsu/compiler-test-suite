module m2
  implicit none
  integer :: n=2
end

module m
  implicit none
  integer :: n=10
  interface
    module function   ksub(a,b) 
      use m2
  implicit none
      character(n) :: a(n,n+2)
      character(n) :: b(size(a,dim=2))
      character(n) :: ksub(size(b,dim=1),size(a,dim=2))
    end 
  end interface
end

submodule(m)smod
contains
  module procedure ksub
      character(n) :: aa(n,n+2)
      character(n) :: bb(size(a,dim=2))
    if (size(a) /= 8) print *,3,size(a)
    if (size(b) /= 4) print *,4,size(b)
    if (size(ksub) /= 4*4) print *,5,size(ksub)
    if (size(aa) /= 8  ) print *,31,size(aa)
    if (size(bb) /= 4) print *,41,size(bb)
    if (len(a) /= 2) print *,3
    if (len(b) /= 2) print *,4
    if (len(ksub) /= 2) print *,5
    if (len(aa) /= 2 ) print *,31
    if (len(bb) /= 2 ) print *,41
    if (n       /= 2) print *,411
a='1'
b='2'
ksub='3'
aa='1'
bb='2'
if (any(aa/='1')) print *,901
if (any(bb/='2')) print *,902
  end procedure
end

use m
character(2)::a(8),b(8),k(4,4)
k=  ksub(a,b)
if (any(a/='1')) print *,101
if (any(b(:4)/='2')) print *,102
if (any(k/='3')) print *,103
a='0'
b='0'
if (any(ksub(a,b)/='3')) print *,104
if (any(a/='1')) print *,101
if (any(b(:4)/='2')) print *,102
if (any(k/='3')) print *,103
print *,'pass'
end
