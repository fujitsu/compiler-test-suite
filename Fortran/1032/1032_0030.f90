module m1
contains
  SUBROUTINE test_sub(zin, zout)
    integer, INTENT(IN)    :: zin(:,:,:,:)
    integer, INTENT(OUT)   :: zout(:,:,:,:)

       if (any(zin/=-1))write(6,*) "NG"
       zout=-100

 return
 entry ent1
  END SUBROUTINE test_sub
end

use m1
  integer, DIMENSION(3,3,3,3,3) :: a
  integer, DIMENSION(size(a)+10) :: b
  equivalence(a,b)
  b=1
  a=-1
  CALL test_sub(a(1,1:3:2,1:3:2,1:3:2,1:3:2), a(2,1:3:2,1:3:2,1:3:2,1:3:2))
  if (any(a(1,1:3:2,1:3:2,1:3:2,1:3:2)/=-1))write(6,*) "NG"
  if (any(a(2,1:3:2,1:3:2,1:3:2,1:3:2)/=-100))write(6,*) "NG"
  if (any(b(size(a)+1:)/=1))write(6,*) "NG"
call ent1
  if (any(a(1,1:3:2,1:3:2,1:3:2,1:3:2)/=-1))write(6,*) "NG"
  if (any(a(2,1:3:2,1:3:2,1:3:2,1:3:2)/=-100))write(6,*) "NG"
  if (any(b(size(a)+1:)/=1))write(6,*) "NG"
print *,'pass'
end
