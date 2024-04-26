module m2
  implicit none
  integer :: n=2
end

module m
  implicit none
  integer :: n=100
  interface
    module subroutine sub(a,b)
      use m2
  implicit none
      character(n) :: a
      character(len(a)) :: b
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
      character(n) :: aa
      character(len(a)) :: bb
    if (len(a) /= 2) print *,3
    if (len(b) /= 2) print *,4
    if (len(aa) /= 2) print *,31
    if (len(bb) /= 2) print *,42
a='1'
b='2'
aa='1'
bb='2'
if (aa/='1') print *,501
if (bb/='2') print *,502
  end procedure
end

use m
character(2)::a,b
call sub(a,b)
if (   (a/='1')) print *,101
if (   (b/='2')) print *,102
print *,'pass'
end
