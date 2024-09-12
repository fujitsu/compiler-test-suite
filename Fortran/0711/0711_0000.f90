 call s1
 print *,'pass'
 end
 subroutine s1
 integer a1(0),a7(2,2,2,2,2,2,0)
 integer(8) x1(0),x7(2,2,2,2,2,2,0)
 complex(16) w1(0),w7(2,2,2,2,2,2,0)
 real   (16) d1(0),d7(2,2,2,2,2,2,0)
  call       ss1(a1,a7,1,x1,x7,w1,w7,d1,d7)
  contains
  subroutine ss1(b1,b7,j,y1,y7,w1,w7,d1,d7)
 integer a1(0),b1(:)
 integer a7(2,2,2,2,2,2,0),b7(:,:,:,:,:,:,:)
 integer(8) x1(0),x7(2,2,2,2,2,2,0)
 integer(8) y1(:),y7(:,:,:,:,:,:,:)
 complex(16) w1(:),w7(:,:,:,:,:,:,:)
 complex(16) p1(0),p7(2,2,2,2,2,2,0)
 real   (16) d1(:),d7(:,:,:,:,:,:,:)
 real   (16) e1(0),e7(2,2,2,2,2,2,0)
 character*500 r(18)
 integer rx01(4)
 complex(16) rx02(2)
 real   (16) rx03(2)
 data r/&
' 0' , &
' 0' , &
' 0' , &
' 0' , &
' (0.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' (0.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' 0.0000000000000000000000000000000000' , &
' 0.0000000000000000000000000000000000' , &
' 0' , &
' 0' , &
' 0' , &
' 0' , &
' (0.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' (0.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' 0.0000000000000000000000000000000000' , &
' 0.0000000000000000000000000000000000' , &
' 0' , &
' 0' /
 character*500 rr
 write(11,*) sum(a1           )
 write(11,*) sum(b1           )
 write(11,*) sum(x1           )
 write(11,*) sum(y1           )
 write(11,*) sum(w1           )
 write(11,*) sum(p1           )
 write(11,*) sum(d1           )
 write(11,*) sum(e1           )
 write(11,*) sum(a7           )
 write(11,*) sum(b7           )
 write(11,*) sum(x7           )
 write(11,*) sum(y7           )
 write(11,*) sum(w7           )
 write(11,*) sum(p7           )
 write(11,*) sum(d7           )
 write(11,*) sum(e7           )
 write(11,*) sum((/(i,i=1,0)/))
 write(11,*) sum((/(i,i=j,0)/))
 rewind 11
  read(11,*) rx01;if (any(rx01/=0))print *,'error-1'
  read(11,*) rx02;if (any(rx02/=0))print *,'error-2'
  read(11,*) rx03;if (any(rx03/=0))print *,'error-3'
  read(11,*) rx01;if (any(rx01/=0))print *,'error-4'
  read(11,*) rx02;if (any(rx02/=0))print *,'error-5'
  read(11,*) rx03;if (any(rx03/=0))print *,'error-6'
  read(11,*) rx01(1:2);if (any(rx01(1:2)/=0))print *,'error-7'
 end subroutine
 end
