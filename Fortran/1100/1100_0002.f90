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
write(4,*) this%x
  end subroutine fin
end

subroutine sub
use m
type(ty),save :: t(2)
t%x=1
t=[ t(1) , t(1) ]
if (any(t%x /=1)) print *,202
end
call sub
rewind 4
read(4,*)n,k
if (n/=1) print *,1010
if (k/=1) print *,1010
read(4,*,end=1)n,k
print *,10101

1    print *,'sngg191j : pass'
end
