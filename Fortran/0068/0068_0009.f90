subroutine sub1(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)+b(k)
  end do
end subroutine sub1

subroutine sub1_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)+b(k)
  end do
end subroutine sub1_2

subroutine sub2(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)+(b(k)+c(k))
  end do
end subroutine sub2

subroutine sub2_2(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)+(b(k)+c(k))
  end do
end subroutine sub2_2

subroutine sub3(a,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)+a(k)
  end do
end subroutine sub3

subroutine sub3_2(a,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)+a(k)
  end do
end subroutine sub3_2

subroutine sub4(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)-b(k)
  end do
end subroutine sub4

subroutine sub4_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)-b(k)
  end do
end subroutine sub4_2

subroutine sub5(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)-(b(k)+c(k))
  end do
end subroutine sub5

subroutine sub5_2(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)-(b(k)+c(k))
  end do
end subroutine sub5_2

subroutine sub6(a,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)-a(k)
  end do
end subroutine sub6

subroutine sub6_2(a,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)-a(k)
  end do
end subroutine sub6_2

subroutine sub7(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)*b(k)
  end do
end subroutine sub7

subroutine sub7_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size
  do i=1,loop_size
     a(i)=a(i)*b(k)
  end do
end subroutine sub7_2

subroutine sub8(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)*(b(k)+c(k))
  end do
end subroutine sub8

subroutine sub8_2(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)*(b(k)+c(k))
  end do
end subroutine sub8_2

subroutine sub9(a,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)*a(k)
  end do
end subroutine sub9

subroutine sub9_2(a,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)*a(k)
  end do
end subroutine sub9_2

subroutine sub10(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)/b(k)
  end do
end subroutine sub10

subroutine sub10_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)/b(k)
  end do
end subroutine sub10_2

subroutine sub11(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)/(b(k)+c(k))
  end do
end subroutine sub11

subroutine sub11_2(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)/(b(k)+c(k))
  end do
end subroutine sub11_2

subroutine sub12(a,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)/a(k)
  end do
end subroutine sub12

subroutine sub12_2(a,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     a(i)=a(i)/a(k)
  end do
end subroutine sub12_2

program main
  implicit none
  integer,parameter::xp1 = 4 
  integer,parameter::xp2 = 8 
  complex(xp1),dimension(5)::a,b,c
  complex(xp2),dimension(5)::a2,b2,c2
  integer loop_size,i

  loop_size=5
  do i=1,loop_size
     b(i)=cmplx(i,i+1)
     c(i)=cmplx(i,i+2)
  end do

  do i=1,loop_size
     b2(i)=cmplx(i,i+1)
     c2(i)=cmplx(i,i+2)
  end do

  a=0
  a2=0

  call sub1(a,b,loop_size)
  if(int(cabs(sum(a)))==32)then
     print *,'sub1 : OK'
  else
     print *,'sub1 : NG',int(cabs(sum(a))),'!=',32
  endif

  call sub1_2(a2,b2,loop_size)
  if(int(cdabs(sum(a2)))==32)then
     print *,'sub1_2 : OK'
  else
     print *,'sub1_2 : NG',int(cdabs(sum(a2))),'!=',32
  endif

  call sub2(a,b,c,loop_size)
  if(int(cabs(sum(a)))==100)then
     print *,'sub2 : OK'
  else
     print *,'sub2 : NG',int(cabs(sum(a))),'!=',100
  endif

  call sub2_2(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==100)then
     print *,'sub2_2 : OK'
  else
     print *,'sub2_2 : NG',int(cdabs(sum(a2))),'!=',100
  endif

  call sub3(a,loop_size-1)
  if(int(cabs(sum(a)))==180)then
     print *,'sub3 : OK'
  else
     print *,'sub3 : NG',int(cabs(sum(a))),'!=',180
  endif

  call sub3_2(a2,loop_size-1)
  if(int(cdabs(sum(a2)))==180)then
     print *,'sub3_2 : OK'
  else
     print *,'sub3_2 : NG',int(cdabs(sum(a2))),'!=',180
  endif

  call sub4(a,b,loop_size)
  if(int(cabs(sum(a)))==148)then
     print *,'sub4 : OK'
  else
     print *,'sub4 : NG',int(cabs(sum(a))),'!=',148
  endif

  call sub4_2(a2,b2,loop_size)
  if(int(cdabs(sum(a2)))==148)then
     print *,'sub4_2 : OK'
  else
     print *,'sub4_2 : NG',int(cdabs(sum(a2))),'!=',148
  endif

  call sub5(b,c,a,loop_size)
  if(int(cabs(sum(a)))==148)then
     print *,'sub5 : OK'
  else
     print *,'sub5 : NG',int(cabs(sum(a))),'!=',148
  endif

  call sub5_2(b2,c2,a2,loop_size)
  if(int(cdabs(sum(a2)))==148)then
     print *,'sub5_2 : OK'
  else
     print *,'sub5_2 : NG',int(cdabs(sum(a2))),'!=',148
  endif

  call sub6(a,loop_size-1)
  if(int(cabs(sum(a)))==93)then
     print *,'sub6 : OK'
  else
     print *,'sub6 : NG',int(cabs(sum(a))),'!=',93
  endif

  call sub6_2(a2,loop_size-1)
  if(int(cdabs(sum(a2)))==93)then
     print *,'sub6_2 : OK'
  else
     print *,'sub6_2 : NG',int(cdabs(sum(a2))),'!=',93
  endif

  call sub7(a,b,loop_size)
  if(int(cabs(sum(a)))==3220)then
     print *,'sub7 : OK'
  else
     print *,'sub7 : NG',int(cabs(sum(a))),'!=',3220
  endif

  call sub7_2(a2,b2,loop_size)
  if(int(cdabs(sum(a2)))==3090)then
     print *,'sub7_2 : OK'
  else
     print *,'sub7_2 : NG',int(cdabs(sum(a2))),'!=',3090
  endif

  call sub8(a,b,c,loop_size)
  if(int(cabs(sum(a)))==87613)then  
     print *,'sub8 : OK'
  else
     print *,'sub8 : NG',int(cabs(sum(a))),'!=',87613
  endif

  call sub8_2(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==84063)then
     print *,'sub8_2 : OK'
  else
     print *,'sub8_2 : NG',int(cdabs(sum(a2))),'!=',84063
  endif

  call sub9(a,loop_size-1)
  if(int(cabs(sum(a))) >= 953353024.and.int(cabs(sum(a)))<=953353088)then
     print *,'sub9 : OK'
  else
     print *,'sub9 : NG',int(cabs(sum(a))),'!=',953353088
  endif

  call sub9_2(a2,loop_size-1)
  if(int(cdabs(sum(a2)))==877664073)then
     print *,'sub9_2 : OK'
  else
     print *,'sub9_2 : NG',int(cdabs(sum(a2))),'!=',877664073
  endif

  call sub10(a,b,loop_size)
  if(int(cabs(sum(a)))>=27706258.and.int(cabs(sum(a)))<=27706262)then
     print *,'sub10 : OK'
  else
     print *,'sub10 : NG',int(cabs(sum(a))),'!=',27706260
  endif

  call sub10_2(a2,b2,loop_size)
  if(int(cdabs(sum(a2)))==25506594)then
     print *,'sub10_2 : OK'
  else
     print *,'sub10_2 : NG',int(cdabs(sum(a2))),'!=',25506594
  endif

  call sub11(a,b,c,loop_size)
  if(int(cabs(sum(a)))==1018502)then
     print *,'sub11 : OK'
  else
     print *,'sub11 : NG',int(cabs(sum(a))),'!=',1018502
  endif

  call sub11_2(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==937641)then
     print *,'sub11_2 : OK'
  else
     print *,'sub11_2 : NG',int(cdabs(sum(a2))),'!=',937641
  endif

  call sub12(a,loop_size-1)
  if(int(cabs(sum(a)))==74878)then
     print *,'sub12 : OK'
  else
     print *,'sub12 : NG',int(cabs(sum(a))),'!=',74878
  endif

  call sub12_2(a2,loop_size-1)
  if(int(cdabs(sum(a2)))==71844)then
     print *,'sub12_2 : OK'
  else
     print *,'sub12_2 : NG',int(cdabs(sum(a2))),'!=',71844
  endif

end program main
