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
write(9,*) this%x
  end subroutine fin
end

subroutine sub
use m
type(ty) :: t
t%x=2
!!print '(z16.16)',loc(t)
t=ty(1)
if (t%x /=1) print *,202
end
call sub
rewind 9
read(9,*) n
if (n/=2) print *,2020
read(9,*) n
if (n/=1) print *,2021
read(9,*,end=1) n
if (n/=2) print *,2020
1    print *,'sngg195j : pass'
end
