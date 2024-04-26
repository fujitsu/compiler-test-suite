integer :: aa(5)
aa =10
call sub((/(I, I=1, 6)/), aa(1:5:2))

if(aa(1).ne.11)print*,"101"
 print *,'PASS'
 contains
subroutine sub(b,b2)
 integer,contiguous:: b(:)
 integer,contiguous:: b2(:)
 if(is_contiguous(b).neqv..true.)print*,"104"
 if(is_contiguous(b2).neqv..true.)print*,"105"

 b2=b2+1
  end subroutine
  end

