!
subroutine loop1(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(5)::b
  integer i,loop_size
  a=(0.0,0.0)
  do i=1,loop_size
     a=a+b(i)
  end do
end subroutine loop1

subroutine loop1_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(5)::b
  integer i,loop_size
  a=(0.0,0.0)
  do i=1,loop_size
     a=b(i)+a
  end do
end subroutine loop1_2

subroutine loop2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(5)::b
  integer i,loop_size
  a=(0.0,0.0)
  do i=1,loop_size
     a=a+b(i)/10.0
  end do
end subroutine loop2

subroutine loop2_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(5)::b
  integer i,loop_size
  a=(0.0,0.0)
  do i=1,loop_size
     a=b(i)/10.0+a
  end do
end subroutine loop2_2

subroutine loop3(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p,q,r
  complex(xp),dimension(5)::b
  integer i,loop_size
  p=(0.0,0.0)
  q=(0.0,0.0)
  r=(0.0,0.0)
  do i=1,loop_size
     p=p+b(i)/10.0
     q=q+b(i)/10.0
     r=r+b(i)/10.0
  end do
  a=p
end subroutine loop3

subroutine loop3_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p,q,r
  complex(xp),dimension(5)::b
  integer i,loop_size
  p=(0.0,0.0)
  q=(0.0,0.0)
  r=(0.0,0.0)
  do i=1,loop_size
     p=b(i)/10.0+p
     q=b(i)/10.0+q
     r=b(i)/10.0+r
  end do
  a=p
end subroutine loop3_2

subroutine loop4(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p,q,r
  complex(xp),dimension(5)::b
  integer i,loop_size
  r=(0.0,0.0)
  do i=1,loop_size
     p=r
     q=p+b(i)/10.0
     r=q
  end do
  a=p
end subroutine loop4

subroutine loop4_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p,q,r
  complex(xp),dimension(5)::b
  integer i,loop_size
  r=(0.0,0.0)
  do i=1,loop_size
     p=r
     q=b(i)/10.0+p
     r=q
  end do
  a=p
end subroutine loop4_2

subroutine loop5(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p
  complex(xp),dimension(5)::b
  integer i,loop_size
  p=(0.0,0.0)
  do i=1,loop_size
     p=p+b(i)/10.0
     if(real(b(i)) < 2.0) then
        p = p*2
     endif
  end do
  a=p
end subroutine loop5

subroutine loop5_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p
  complex(xp),dimension(5)::b
  integer i,loop_size
  p=(0.0,0.0)
  do i=1,loop_size
     p=b(i)/10.0+p
     if(real(b(i)) < 2.0) then
        p = p*2
     endif
  end do
  a=p
end subroutine loop5_2

subroutine loop6(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p
  complex(xp),dimension(5)::b
  integer i,loop_size
  common //p
  p=0
  do i=1,loop_size
     p=p+b(i)/10.0
     call sub()
  end do
  a=p
end subroutine loop6

subroutine loop6_2(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,p
  complex(xp),dimension(5)::b
  integer i,loop_size
  common //p
  p=0.0
  do i=1,loop_size
     p=b(i)/10.0+p
     call sub()
  end do
  a=p
end subroutine loop6_2

subroutine sub()
  implicit none
  integer,parameter::xp = 4
  complex(xp)::p
  p=1.0
end subroutine sub

subroutine loop7(a,b,loop_size,c)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(5)::c,b
  integer i,loop_size,k
  k=2
  do i=1,loop_size
     c(k)=c(k)+b(i)
  end do
  a=c(k)
end subroutine loop7

subroutine loop7_2(a,b,loop_size,c)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(5)::c,b
  integer i,loop_size,k
  k=2
  do i=1,loop_size
     c(k)=b(i)+c(k)
  end do
  a=c(k)
end subroutine loop7_2

subroutine loop8(a,loop_size,c)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(6)::c
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     c(k)=c(2)+c(i)
  end do
  a=c(k)
end subroutine loop8

subroutine loop8_2(a,loop_size,c)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a
  complex(xp),dimension(6)::c
  integer i,loop_size,k
  k=loop_size+1
  do i=1,loop_size
     c(k)=c(i)+c(2)
  end do
  a=c(k)
end subroutine loop8_2

program main
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(6)::c,b
  complex(xp)::a
  real(xp)::dist
  integer i,loop_size
  loop_size=5

  do i=1,loop_size+1
     b(i)=cmplx(i,i+1)
     c(i)=cmplx(i,i+2)
  end do

  call loop1(a,b,loop_size)
  if(a==(15.0,20.0))then
     print *,'loop1 : OK'
  else
     print *,'loop1 : NG a=',a
  endif

  call loop1_2(a,b,loop_size)
  if(a==(15.0,20.0))then
     print *,'loop1_2 : OK'
  else
     print *,'loop1_2 : NG a=',a
  endif

  call loop2(a,b,loop_size)
  if(a==(1.5,2.0))then
     print *,'loop2 : OK'
  else
     print *,'loop2 : NG a=',a
  endif

  call loop2_2(a,b,loop_size)
  if(a==(1.5,2.0))then
     print *,'loop2_2 : OK'
  else
     print *,'loop2_2 : NG a=',a
  endif

  call loop3(a,b,loop_size)
  if(a==(1.5,2.0))then
     print *,'loop3 : OK'
  else
     print *,'loop3 : NG a=',a
  endif

  call loop3_2(a,b,loop_size)
  if(a==(1.5,2.0))then
     print *,'loop3_2 : OK'
  else
     print *,'loop3_2 : NG a=',a
  endif

  call loop4(a,b,loop_size)
  dist = abs(aimag(a)-1.399)
  if(real(a) == 1.0 .and. dist < 0.01 ) then
     print *,'loop4 : OK'
  else
     print *,'loop4 : NG a=',a
  endif

  call loop4_2(a,b,loop_size)
  dist = abs(aimag(a)-1.399)
  if(real(a) == 1.0 .and. dist < 0.01 ) then
     print *,'loop4_2 : OK'
  else
     print *,'loop4_2 : NG a=',a
  endif

  call loop5(a,b,loop_size)
  dist = abs(a-(1.6,2.2))
  if(dist < 0.01 ) then
     print *,'loop5 : OK'
  else
     print *,'loop5 : NG a=',a
  endif

  call loop5_2(a,b,loop_size)
  dist = abs(a-(1.6,2.2))
  if(dist < 0.01 ) then
     print *,'loop5_2 : OK'
  else
     print *,'loop5_2 : NG a=',a
  endif

  call loop6(a,b,loop_size)
  if(a==(1.5,2.0))then
     print *,'loop6 : OK'
  else
     print *,'loop6 : NG a=',a
  endif

  call loop6_2(a,b,loop_size)
  if(a==(1.5,2.0))then
     print *,'loop6_2 : OK'
  else
     print *,'loop6_2 : NG a=',a
  endif

  call loop7(a,b,loop_size,c)
  if(a==(17.0,24.0))then
     print *,'loop7 : OK'
  else
     print *,'loop7 : NG a=',a
  endif

  call loop7_2(a,b,loop_size,c)
  if(a==(32,44.0))then
     print *,'loop7_2 : OK'
  else
     print *,'loop7_2 : NG a=',a
  endif

  call loop8(a,loop_size,c)
  if(a==(37.0,51.0))then
     print *,'loop8 : OK'
  else
     print *,'loop8 : NG a=',a
  endif

  call loop8_2(a,loop_size,c)
  if(a==(37.0,51.0))then
     print *,'loop8_2 : OK'
  else
     print *,'loop8_2 : NG a=',a
  endif

end program main
