module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  subroutine fin(this)
    type(ty),intent(in) :: this(:)
!print *,'fin'
write(8,*) this%x
  end subroutine fin
end

subroutine sub
use m
data k/2/
type(ty),save :: t(2)
t(1)%x=1
t(2)%x=2
t=[ (t(1) , i=1,k) ]
if (any(t%x /=1)) print *,202
end
call sub
rewind 8
read(8,*) n1,n2
if (n1/=1) print *,202
if (n2/=2) print *,203
read(8,*,end=1) n1,n2
if (n1/=1) print *,202
1    print *,'sngg193j : pass'
end
