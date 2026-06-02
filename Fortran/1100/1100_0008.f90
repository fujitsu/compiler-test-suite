module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  subroutine fin(this)
    type(ty),intent(in) :: this
!print '(z16.16)',loc(this)
!print *,'fin'
write(11,*) this%x
  end subroutine fin
subroutine sub
type(ty) :: t
t%x=2
!!print '(z16.16)',loc(t)
t=ty(1)
if (t%x /=1) print *,202
call fin(t)
end
end
use m
call sub
rewind 11
read(11,*) n
if (n/=2) print *,2020
read(11,*) n
if (n/=1) print *,2021
read(11,*) n
if (n/=1) print *,2022
read(11,*,end=1) n
if (n/=2) print *,2020
1    print *,'sngg197j : pass'
end
