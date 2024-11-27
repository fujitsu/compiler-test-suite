 module m1
  type tt
    integer::i1=1
    integer::i2=2
    integer::i3=3
  end type
 end 
use m1
type (tt)::xx
if (any((/xx%i1,xx%i2,xx%i3/)/=(/1,2,3/)))write(6,*) "OK"
xx=tt(11,12,13)
if (any((/xx%i1,xx%i2,xx%i3/)/=(/1,2,3/)+10))write(6,*) "OK"
call sub(xx)
if (any((/xx%i1,xx%i2,xx%i3/)/=(/1,2,3/)))write(6,*) "OK"
print *,'pass'
end
subroutine sub(xx)
use m1
type(tt),intent(out)::xx
if (any((/xx%i1,xx%i2,xx%i3/)/=(/1,2,3/)))write(6,*) "OK"
end
