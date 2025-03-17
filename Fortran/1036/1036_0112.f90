integer a(5,5)
real(8) b(5,5),bb(5,5)
a=reshape((/(i,i=1,25)/),(/5,5/))
b=reshape((/(i,i=1,25)/),(/5,5/))
call sub1(b(2:3,2:3),bb(2:3,2:3))
if (any(abs((/bb(2:3,2:3)/)-(/145,160,240,265/))>0.001))print *,'error'
call sub(a(2:3,2:3))
print *,'pass'
contains
 subroutine sub1(a,b)
 real*8 a(:,:),b(:,:)
 b=matmul(a,a)
 end subroutine
 subroutine sub(x)
 integer,intent(out) ::x(:,:)
x(2,2)=0
 if (x(2,2)/=0)print *,'error'
 end subroutine
end
