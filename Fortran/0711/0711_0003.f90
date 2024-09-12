 call s1
 print *,'pass'
 end
 subroutine s1
 integer a1(0),a7(2,2,2,0,2,2,2)
 integer(8) x1(0),x7(2,2,2,0,2,2,2)
 complex(16) w1(0),w7(2,2,2,0,2,2,2)
 real   (16) d1(0),d7(2,2,2,0,2,2,2)
  call       ss1(a1,a7,1,x1,x7,w1,w7,d1,d7,0)
  contains
  subroutine ss1(b1,b7,j,y1,y7,w1,w7,d1,d7,k)
 integer a1(k),b1(k)
 integer a7(2,2,2,k,2,2,2),b7(:,:,:,:,:,:,:)
 integer(8) x1(k),x7(2,2,2,k,2,2,2)
 integer(8) y1(k),y7(:,:,:,:,:,:,:)
 complex(16) w1(k),w7(:,:,:,:,:,:,:)
 complex(16) p1(k),p7(2,2,2,k,2,2,2)
 real   (16) d1(k),d7(:,:,:,:,:,:,:)
 real   (16) e1(k),e7(2,2,2,k,2,2,2)
 character*500 r(18)
 integer rx01(4)
 complex(16) rx02(2)
 real   (16) rx03(2)
 data r/&
' 1' , &
' 1' , &
' 1' , &
' 1' , &
' (1.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' (1.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' 1.0000000000000000000000000000000000' , &
' 1.0000000000000000000000000000000000' , &
' 1' , &
' 1' , &
' 1' , &
' 1' , &
' (1.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' (1.0000000000000000000000000000000000,0.0000000000000000000000000000000000)' , &
' 1.0000000000000000000000000000000000' , &
' 1.0000000000000000000000000000000000' , &
' 1' , &
' 1' /
 character*500 rr
 write(11,*) product(a1           )
 write(11,*) product(b1           )
 write(11,*) product(x1           )
 write(11,*) product(y1           )
 write(11,*) product(w1           )
 write(11,*) product(p1           )
 write(11,*) product(d1           )
 write(11,*) product(e1           )
 write(11,*) product(a7           )
 write(11,*) product(b7           )
 write(11,*) product(x7           )
 write(11,*) product(y7           )
 write(11,*) product(w7           )
 write(11,*) product(p7           )
 write(11,*) product(d7           )
 write(11,*) product(e7           )
 write(11,*) product((/(i,i=1,0)/))
 write(11,*) product((/(i,i=j,0)/))
 rewind 11
  read(11,*) rx01;if (any(rx01/=1))print *,'error-1'
  read(11,*) rx02;if (any(rx02/=(1.,0)))print *,'error-2'
  read(11,*) rx03;if (any(rx03/=1))print *,'error-3'
  read(11,*) rx01;if (any(rx01/=1))print *,'error-4'
  read(11,*) rx02;if (any(rx02/=(1,0)))print *,'error-5'
  read(11,*) rx03;if (any(rx03/=1))print *,'error-6'
  read(11,*) rx01(1:2);if (any(rx01(1:2)/=1))print *,'error-7'
 end subroutine
 end
