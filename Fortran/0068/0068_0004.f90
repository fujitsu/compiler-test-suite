subroutine sub1(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) + c(i)
     e(i)= b(i) - c(i)
     a(i) = b(i) + c(i) 
  end do
end subroutine sub1

subroutine sub1_2(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) + c(i)
     e(i)= b(i) - c(i)
     a(i) = b(i) + c(i) 
  end do
end subroutine sub1_2

subroutine sub2(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) - c(i)
     e(i)= b(i) + c(i)
     a(i) = b(i) - c(i) 
  end do
end subroutine sub2

subroutine sub2_2(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) - c(i)
     e(i)= b(i) + c(i)
     a(i) = b(i) - c(i) 
  end do
end subroutine sub2_2

subroutine sub3(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) * c(i)
     e(i)= b(i) - c(i)
     a(i) = b(i) * c(i) 
  end do
end subroutine sub3

subroutine sub3_2(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) * c(i)
     e(i)= b(i) - c(i)
     a(i) = b(i) * c(i) 
  end do
end subroutine sub3_2

subroutine sub4(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) / c(i)
     e(i)= b(i) - c(i)
     a(i) = b(i) / c(i) 
  end do
end subroutine sub4

subroutine sub4_2(a,b,c,d,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e
  integer i,loop_size
  do i=1,loop_size
     d(i) = b(i) / c(i)
     e(i)= b(i) - c(i)
     a(i) = b(i) / c(i) 
  end do
end subroutine sub4_2

subroutine sub5(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) + d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) + c(i)  
  end do
end subroutine sub5

subroutine sub5_2(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) + d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) + c(i)  
  end do
end subroutine sub5_2

subroutine sub6(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) - d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) - c(i)  
  end do
end subroutine sub6

subroutine sub6_2(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) - d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) - c(i)  
  end do
end subroutine sub6_2

subroutine sub7(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) * d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) * c(i)  
  end do
end subroutine sub7

subroutine sub7_2(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) * d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) * c(i)  
  end do
end subroutine sub7_2

subroutine sub8(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) / d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) / c(i)  
  end do
end subroutine sub8

subroutine sub8_2(a,b,c,d,e,f,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,d,e,f
  integer i,loop_size
  do i=1,loop_size
     a(i) = b(i) + c(i) / d(i)
     f(i)= b(i) - c(i)
     e(i) = d(i) + b(i) / c(i)  
  end do
end subroutine sub8_2

program main
  implicit none
  integer,parameter::xp1 = 4 
  integer,parameter::xp2 = 8 
  complex(xp1),dimension(5)::a,b,c,d,e,f
  complex(xp2),dimension(5)::a2,b2,c2,d2,e2,f2
  integer loop_size,i

  loop_size=5
  do i=1,loop_size
     b(i)=cmplx(i,i+1)
     c(i)=cmplx(i,i+2)
     b2(i)=cmplx(i,i+1)
     c2(i)=cmplx(i,i+2)
  end do

  call sub1(a,b,c,d,e,loop_size)
  if (int(cabs(sum(a)))==54 .and. int(cabs(sum(d)))==54 ) then
     print *,'sub1 : OK'
  else
     print *,'sub1 : NG ',int(cabs(sum(a))),'!=',54
  endif

  call sub1_2(a2,b2,c2,d2,e2,loop_size)
  if (int(cdabs(sum(a2)))==54 .and. int(cdabs(sum(d2)))==54 ) then
     print *,'sub1_2 : OK'
  else
     print *,'sub1_2 : NG ',int(cdabs(sum(a2))),'!=',54
  endif

  call sub2(a,b,c,d,e,loop_size)
  if (int(cabs(sum(a)))==5 .and. int(cabs(sum(d)))==5 ) then
     print *,'sub2 : OK'
  else
     print *,'sub2 : NG ',int(cabs(sum(a))),'!=',5
  endif

  call sub2_2(a2,b2,c2,d2,e2,loop_size)
  if (int(cdabs(sum(a2)))==5 .and. int(cdabs(sum(d2)))==5 ) then
     print *,'sub2_2 : OK'
  else
     print *,'sub2_2 : NG ',int(cdabs(sum(a2))),'!=',5
  endif

  call sub3(a,b,c,d,e,loop_size)
  if (int(cabs(sum(a)))==164 .and. int(cabs(sum(d)))==164 ) then
     print *,'sub3 : OK'
  else
     print *,'sub3 : NG ',int(cabs(sum(a))),'!=',164
  endif

  call sub3_2(a2,b2,c2,d2,e2,loop_size)
  if (int(cdabs(sum(a2)))==164 .and. int(cdabs(sum(d2)))==164 ) then
     print *,'sub3_2 : OK'
  else
     print *,'sub3_2 : NG ',int(cdabs(sum(a2))),'!=',164
  endif

  call sub4(a,b,c,d,e,loop_size)
  if (int(cabs(sum(a)))==4 .and. int(cabs(sum(d)))==4 ) then
     print *,'sub4 : OK'
  else
     print *,'sub4 : NG ',int(cabs(sum(a))),'!=',4
  endif

  call sub4_2(a2,b2,c2,d2,e2,loop_size)
  if (int(cdabs(sum(a2)))==4 .and. int(cdabs(sum(d2)))==4) then
     print *,'sub4_2 : OK'
  else
     print *,'sub4_2 : NG ',int(cdabs(sum(a2))),'!=',4
  endif

  do i=1,loop_size
     d(i)=cmplx(i,i+1)
     d2(i)=cmplx(i,i+1)
  end do

  call sub5(a,b,c,d,e,f,loop_size)
  if (int(cabs(sum(a)))==79 .and. int(cabs(sum(e)))==79 ) then
     print *,'sub5 : OK'
  else
     print *,'sub5 : NG ',int(cabs(sum(a))),'!=',79
  endif

  call sub5_2(a2,b2,c2,d2,e2,f2,loop_size)
  if (int(cdabs(sum(a2)))==79 .and. int(cdabs(sum(e2)))==79 ) then
     print *,'sub5_2 : OK'
  else
     print *,'sub5_2 : NG ',int(cdabs(sum(a2))),'!=',79
  endif

  call sub6(a,b,c,d,e,f,loop_size)
  if (int(cabs(sum(a)))==29 .and. int(cabs(sum(e)))==21 ) then
     print *,'sub6 : OK'
  else
     print *,'sub6 : NG a:',int(cabs(sum(a))),'!=',29,'e:',int(cabs(sum(e))),'!=',27
  endif

  call sub6_2(a2,b2,c2,d2,e2,f2,loop_size)
  if (int(cdabs(sum(a2)))==29 .and. int(cdabs(sum(e2)))== 21) then
     print *,'sub6_2 : OK'
  else
     print *,'sub6_2 : NG a2:',int(cdabs(sum(a2))),'!=',29,'e2=',int(cdabs(sum(e2))),'!=',21
  endif

  call sub7(a,b,c,d,e,f,loop_size)
  if (int(cabs(sum(a)))==179 .and. int(cabs(sum(e)))==179 ) then
     print *,'sub7 : OK'
  else
     print *,'sub7 : NG ',int(cabs(sum(a))),'!=',179
  endif

  call sub7_2(a2,b2,c2,d2,e2,f2,loop_size)
  if (int(cdabs(sum(a2)))==179 .and. int(cdabs(sum(e2)))==179 ) then
     print *,'sub7_2 : OK'
  else
     print *,'sub7_2 : NG ',int(cdabs(sum(a2))),'!=',179
  endif

  call sub8(a,b,c,d,e,f,loop_size)
  if (int(cabs(sum(a)))==29 .and. int(cabs(sum(e)))==27 ) then
     print *,'sub8 : OK'
  else
     print *,'sub8 : NG a:',int(cabs(sum(a))),'!=',29,'e:',int(cabs(sum(e))),'!=',27
  endif

  call sub8_2(a2,b2,c2,d2,e2,f2,loop_size)
  if (int(cdabs(sum(a2)))==29 .and. int(cdabs(sum(e2)))==27 ) then
     print *,'sub8_2 : OK'
  else
     print *,'sub8_2 : NG a2:',int(cdabs(sum(a2))),'!=',29,'e2=',int(cdabs(sum(e2))),'!=',27
  endif
end program main
