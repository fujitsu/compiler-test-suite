!
subroutine power1(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b**c+b
end subroutine power1

subroutine power1_2(a,b,c)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  a = b**c+b
end subroutine power1_2

subroutine power2(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b**c-b
end subroutine power2

subroutine power2_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b**c-b
end subroutine power2_2

subroutine power3(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b**c*b
end subroutine power3

subroutine power3_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b**c*b
end subroutine power3_2

subroutine power4(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b**c/b
end subroutine power4

subroutine power4_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b**c/b
end subroutine power4_2

subroutine power5(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = (b+c)**b
end subroutine power5

subroutine power5_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = (b+c)**b
end subroutine power5_2

subroutine power6(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = (b-c)**b
end subroutine power6

subroutine power6_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = (b-c)**b
end subroutine power6_2

subroutine power7(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = (b*c)**b
end subroutine power7

subroutine power7_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = (b*c)**b
end subroutine power7_2

subroutine power8(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = (b/c)**b
end subroutine power8

subroutine power8_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = (b/c)**b
end subroutine power8_2

subroutine power9(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**f(i)
  end do
end subroutine power9 

subroutine power9_2(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**f(i)
  end do
end subroutine power9_2

subroutine power10(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**f(i)
  end do
end subroutine power10

subroutine power10_2(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**f(i)
  end do
end subroutine power10_2

subroutine power11(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**f(i)
  end do
end subroutine power11

subroutine power11_2(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**f(i)
  end do
end subroutine power11_2

subroutine power12(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**f(i)
  end do
end subroutine power12

subroutine power12_2(aa,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**f(i)
  end do
end subroutine power12_2

subroutine power13(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**(f(i)-g(i))
  end do
end subroutine power13

subroutine power13_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**(f(i)-g(i))
  end do
end subroutine power13_2

subroutine power14(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**(f(i)*g(i))
  end do
end subroutine power14

subroutine power14_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**(f(i)*g(i))
  end do
end subroutine power14_2

subroutine power15(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**(f(i)/g(i))
  end do
end subroutine power15

subroutine power15_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**(f(i)/g(i))
  end do
end subroutine power15_2

subroutine power16(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**(f(i)+g(i))
  end do
end subroutine power16

subroutine power16_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**(f(i)+g(i))
  end do
end subroutine power16_2

subroutine power17(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**(f(i)*g(i))
  end do
end subroutine power17

subroutine power17_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**(f(i)*g(i))
  end do
end subroutine power17_2

subroutine power18(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**(f(i)/g(i))
  end do
end subroutine power18

subroutine power18_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**(f(i)/g(i))
  end do
end subroutine power18_2

subroutine power19(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**(f(i)+g(i))
  end do
end subroutine power19

subroutine power19_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**(f(i)+g(i))
  end do
end subroutine power19_2

subroutine power20(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**(f(i)-g(i))
  end do
end subroutine power20

subroutine power20_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**(f(i)-g(i))
  end do
end subroutine power20_2

subroutine power21(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**(f(i)/g(i))
  end do
end subroutine power21

subroutine power21_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)+e(i))**(f(i)/g(i))
  end do
end subroutine power21_2

subroutine power22(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**(f(i)+g(i))
  end do
end subroutine power22

subroutine power22_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)-e(i))**(f(i)+g(i))
  end do
end subroutine power22_2

subroutine power23(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**(f(i)-g(i))
  end do
end subroutine power23

subroutine power23_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)*e(i))**(f(i)-g(i))
  end do
end subroutine power23_2

subroutine power24(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**(f(i)*g(i))
  end do
end subroutine power24

subroutine power24_2(aa,d,e,f,g,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::aa,d,e,f,g
  integer i,loop_size
  do i=1,loop_size
     aa(i) = (d(i)/e(i))**(f(i)*g(i))
  end do
end subroutine power24_2

subroutine c_sqrt1(a,b)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  a = sqrt(b)
end subroutine c_sqrt1

subroutine c_sqrt1_2(a,b)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b
  a = sqrt(b)
end subroutine c_sqrt1_2

subroutine c_sqrt2(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b+c)
end subroutine c_sqrt2

subroutine c_sqrt2_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = sqrt(b+c)
end subroutine c_sqrt2_2

subroutine c_sqrt3(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b*c)
end subroutine c_sqrt3

subroutine c_sqrt3_2(a,b,c)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  a = sqrt(b*c)
end subroutine c_sqrt3_2

subroutine c_sqrt4(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b/c)
end subroutine c_sqrt4

subroutine c_sqrt4_2(a,b,c)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  a = sqrt(b/c)
end subroutine c_sqrt4_2

subroutine c_sqrt5(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b)+c
end subroutine c_sqrt5

subroutine c_sqrt5_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = sqrt(b)+c
end subroutine c_sqrt5_2

subroutine c_sqrt6(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b)-c
end subroutine c_sqrt6

subroutine c_sqrt6_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = sqrt(b)-c
end subroutine c_sqrt6_2

subroutine c_sqrt7(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b)*c
end subroutine c_sqrt7

subroutine c_sqrt7_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = sqrt(b)*c
end subroutine c_sqrt7_2

subroutine c_sqrt8(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = sqrt(b)/c
end subroutine c_sqrt8

subroutine c_sqrt8_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = sqrt(b)/c
end subroutine c_sqrt8_2

program main
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8 
  complex(xp)::a,b,c
  complex(xp2)::a2,b2,c2
  complex(xp),dimension(5)::aa,d,e,f,g
  complex(xp2),dimension(5)::aa2,d2,e2,f2,g2
  real(xp)::dist
  integer loop_size,i
  loop_size=5
  b=(1.0,2.0)
  c=(2.0,3.0)
  b2=(1.0,2.0)
  c2=(2.0,3.0)

  do i=1,loop_size
     d(i)= cmplx(i,i+1)
     e(i)= cmplx(i,i+2)
     f(i)= cmplx(i,i+3)
     g(i)= cmplx(i,i+4)
  enddo

  do i=1,loop_size
     d2(i)= cmplx(i,i+1)
     e2(i)= cmplx(i,i+2)
     f2(i)= cmplx(i,i+3)
     g2(i)= cmplx(i,i+4)
  enddo

  call power1(a,b,c)
  dist=abs(a-(0.984,1.820))
  if(dist < 0.01) then
     print *,'power : OK'
   else
     print *,'power : NG a=',a
  endif

  call power1_2(a2,b2,c2)
  dist=abs(a2-(0.984,1.820))
  if(dist < 0.01) then
     print *,'power1_2 : OK'
  else
     print *,'power1_2 : NG a2=',a2
  endif

  call power2(a,b,c)
  dist=abs(a-(-1.015,-2.179))
  if(dist < 0.01) then
     print *,'power2 : OK'
   else
     print *,'power2 : NG a=',a
  endif

  call power2_2(a2,b2,c2)
  dist=abs(a2-(-1.015,-2.179))
  if(dist < 0.01) then
     print *,'power2_2 : OK'
  else
     print *,'power2_2 : NG a2=',a2
  endif

  call power3(a,b,c)
  dist=abs(a-(0.344,-0.210))
  if(dist < 0.01) then
     print *,'power3 : OK'
   else
     print *,'power3 : NG a=',a
  endif

  call power3_2(a2,b2,c2)
  dist=abs(a2-(0.344,-0.210))
  if(dist < 0.01) then
     print *,'power3_2 : OK'
  else
     print *,'power3_2 : NG a2=',a2
  endif

  call power4(a,b,c)
  dist=abs(a-(-7.497E-02,-2.992E-02))
  if(dist < 0.01) then
     print *,'power4 : OK'
   else
     print *,'power4 : NG a=',a
  endif

  call power4_2(a2,b2,c2)
  dist=abs(a2-(-7.497E-02,-2.992E-02))
  if(dist < 0.01) then
     print *,'power4_2 : OK'
  else
     print *,'power4_2 : NG a2=',a2
  endif

  call power5(a,b,c)
  dist=abs(a-(-0.115,-0.733))
  if(dist < 0.01) then
     print *,'power5 : OK'
   else
     print *,'power5 : NG a=',a
  endif

  call power5_2(a2,b2,c2)
  dist=abs(a2-(-0.115,-0.733))
  if(dist < 0.01) then
     print *,'power5_2 : OK'
  else
     print *,'power5_2 : NG a2=',a2
  endif

  call power6(a,b,c)
  dist=abs(a-(-14.502,-156.757))
  if(dist < 0.01) then
     print *,'power6 : OK'
   else
     print *,'power6 : NG a=',a
  endif

  call power6_2(a2,b2,c2)
  dist=abs(a2-(-14.502,-156.757))
  if(dist < 0.01) then
     print *,'power6_2 : OK'
  else
     print *,'power6_2 : NG a2=',a2
  endif

  call power7(a,b,c)
  dist=abs(a-(0.123,-2.325E-03))
  if(dist < 0.01) then
     print *,'power7 : OK'
   else
     print *,'power7 : NG a=',a
  endif

  call power7_2(a2,b2,c2)
  dist=abs(a2-(0.123,-2.325E-03))
  if(dist < 0.01) then
     print *,'power7_2 : OK'
  else
     print *,'power7_2 : NG a2=',a2
  endif

  call power8(a,b,c)
  dist=abs(a-(0.325,-0.357))
  if(dist < 0.01) then
     print *,'power8 : OK'
   else
     print *,'power8 : NG a=',a
  endif

  call power8_2(a2,b2,c2)
  dist=abs(a2-(0.325,-0.357))
  if(dist < 0.01) then
     print *,'power8_2 : OK'
  else
     print *,'power8_2 : NG a2=',a2
  endif

  call power9(aa,d,e,f,loop_size)
  if(int(cabs(sum(aa)))==792)then
     print *,'power9 : OK'
   else
     print *,'power9 : NG ',int(cabs(sum(aa))),'!=',792
  endif

  call power9_2(aa2,d2,e2,f2,loop_size)
  if(int(cdabs(sum(aa2)))==792)then
     print *,'power9_2 : OK'
  else
     print *,'power9_2 : NG ',int(cdabs(sum(aa2))),'!=',792
  endif

  call power10(aa,d,e,f,loop_size)
  if(int(cabs(sum(aa)))==280749)then
     print *,'power10 : OK'
   else
     print *,'power10 : NG ',int(cabs(sum(aa))),'!=',280749
  endif

  call power10_2(aa2,d2,e2,f2,loop_size)
  if(int(cdabs(sum(aa2)))==280749)then
     print *,'power10_2 : OK'
  else
     print *,'power10_2 : NG ',int(cdabs(sum(aa2))),'!=',280749
  endif

  call power11(aa,d,e,f,loop_size)
  if(int(cabs(sum(aa)))==611)then
     print *,'power11 : OK'
   else
     print *,'power11 : NG ',int(cabs(sum(aa))),'!=',611
  endif

  call power11_2(aa2,d2,e2,f2,loop_size)
  if(int(cdabs(sum(aa2)))==611)then
     print *,'power11_2 : OK'
  else
     print *,'power11_2 : NG ',int(cdabs(sum(aa2))),'!=',611
  endif

  call power12(aa,d,e,f,loop_size)
  if(int(cabs(sum(aa)))==5)then
     print *,'power12 : OK'
   else
     print *,'power12 : NG ',int(cabs(sum(aa))),'!=',5
  endif

  call power12_2(aa2,d2,e2,f2,loop_size)
  if(int(cdabs(sum(aa2)))==5)then
     print *,'power12_2 : OK'
  else
     print *,'power12_2 : NG ',int(cdabs(sum(aa2))),'!=',5
  endif

  call power13(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==12)then
     print *,'power13: OK'
   else
     print *,'power13 : NG ',int(cabs(sum(aa))),'!=',12
  endif

  call power13_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==12)then
     print *,'power13_2 : OK'
  else
     print *,'power13_2 : NG ',int(cdabs(sum(aa2))),'!=',12
  endif

  call power14(aa,g,f,e,d,loop_size-3)
  if(int(cabs(sum(aa)))==7)then
     print *,'power14: OK'
   else
     print *,'power14 : NG ',int(cabs(sum(aa))),'!=',7
  endif

  call power14_2(aa2,g2,f2,e2,d2,loop_size-3)
  if(int(cdabs(sum(aa2)))==7)then
     print *,'power14_2 : OK'
  else
     print *,'power14_2 : NG ',int(cdabs(sum(aa2))),'!=',7
  endif

  call power15(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==123)then
     print *,'power15: OK'
   else
     print *,'power15 : NG ',int(cabs(sum(aa))),'!=',123
  endif

  call power15_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==123)then
     print *,'power15_2 : OK'
  else
     print *,'power15_2 : NG ',int(cdabs(sum(aa2))),'!=',123
  endif

  call power16(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==7)then
     print *,'power16: OK'
   else
     print *,'power16 : NG ',int(cabs(sum(aa))),'!=',7
  endif

  call power16_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==7)then
     print *,'power16_2 : OK'
  else
     print *,'power16_2 : NG ',int(cdabs(sum(aa2))),'!=',7
  endif

  call power17(aa,g,f,e,d,loop_size-3)
  if(int(cabs(sum(aa)))==4)then
     print *,'power17: OK'
   else
     print *,'power17 : NG ',int(cabs(sum(aa))),'!=',4
  endif

  call power17_2(aa2,d2,e2,f2,g2,loop_size-3)
  if(int(cdabs(sum(aa2)))==4)then
     print *,'power17_2 : OK'
  else
     print *,'power17_2 : NG ',int(cdabs(sum(aa2))),'!=',4
  endif

  call power18(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==4)then
     print *,'power18: OK'
   else
     print *,'power18 : NG ',int(cabs(sum(aa))),'!=',4
  endif

  call power18_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==4)then
     print *,'power18_2 : OK'
  else
     print *,'power18_2 : NG ',int(cdabs(sum(aa2))),'!=',4
  endif

  call power19(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==61231)then
     print *,'power19: OK'
   else
     print *,'power19 : NG ',int(cabs(sum(aa))),'!=',61231
  endif

  call power19_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==61231)then
     print *,'power19_2 : OK'
  else
     print *,'power19_2 : NG ',int(cdabs(sum(aa2))),'!=',61231
  endif

  call power20(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==4)then
     print *,'power20: OK'
   else
     print *,'power20 : NG ',int(cabs(sum(aa))),'!=',4
  endif

  call power20_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==4)then
     print *,'power20_2 : OK'
  else
     print *,'power20_2 : NG ',int(cdabs(sum(aa2))),'!=',4
  endif

  call power21(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==43)then
     print *,'power21: OK'
   else
     print *,'power21 : NG ',int(cabs(sum(aa))),'!=',43
  endif

  call power21_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==43)then  
     print *,'power21_2 : OK'
  else
     print *,'power21_2 : NG ',int(cdabs(sum(aa2))),'!=',43
  endif

  call power22(aa,g,f,e,d,loop_size)
  if(int(cabs(sum(aa)))==0)then
     print *,'power22: OK'
   else
     print *,'power22 : NG ',int(cabs(sum(aa))),'!=',0
  endif

  call power22_2(aa2,g2,f2,e2,d2,loop_size)
  if(int(cdabs(sum(aa2)))==0)then  
     print *,'power22_2 : OK'
  else
     print *,'power22_2 : NG ',int(cdabs(sum(aa2))),'!=',0
  endif

  call power23(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==26)then
     print *,'power23: OK'
   else
     print *,'power23 : NG ',int(cabs(sum(aa))),'!=',26
  endif

  call power23_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==26)then 
     print *,'power23_2 : OK'
  else
     print *,'power23_2 : NG ',int(cdabs(sum(aa2))),'!=',26
  endif

  call power24(aa,d,e,f,g,loop_size)
  if(int(cabs(sum(aa)))==58197)then
     print *,'power24: OK'
   else
     print *,'power24 : NG ',int(cabs(sum(aa))),'!=',58197
  endif

  call power24_2(aa2,d2,e2,f2,g2,loop_size)
  if(int(cdabs(sum(aa2)))==58197)then 
     print *,'power24_2 : OK'
  else
     print *,'power24_2 : NG ',int(cdabs(sum(aa2))),'!=',58197
  endif

  call c_sqrt1(a,b)
  dist=abs(a-(1.272,0.786))
  if(dist < 0.01) then
     print *,'c_sqrt1 : OK'
   else
     print *,'c_sqrt1 : NG a=',a
  endif

  call c_sqrt1_2(a2,b2)
  dist=abs(a2-(1.272,0.786))
  if(dist < 0.01) then
     print *,'c_sqrt1_2 : OK'
  else
     print *,'c_sqrt1_2 : NG a2=',a2
  endif

  call c_sqrt2(a,b,c)
  dist=abs(a-(2.101,1.189))
  if(dist < 0.01) then
     print *,'c_sqrt2 : OK'
   else
     print *,'c_sqrt2 : NG a=',a
  endif

  call c_sqrt2_2(a2,b2,c2)
  dist=abs(a2-(2.101,1.189))
  if(dist < 0.01) then
     print *,'c_sqrt2_2 : OK'
  else
     print *,'c_sqrt2_2 : NG a2=',a2
  endif

  call c_sqrt3(a,b,c)
  dist=abs(a-(1.425,2.455))
  if(dist < 0.01) then
     print *,'c_sqrt3 : OK'
   else
     print *,'c_sqrt3 : NG a=',a
  endif

  call c_sqrt3_2(a2,b2,c2)
  dist=abs(a2-(1.425,2.455))
  if(dist < 0.01) then
     print *,'c_sqrt3_2 : OK'
  else
     print *,'c_sqrt3_2 : NG a2=',a2
  endif

  call c_sqrt4(a,b,c)
  dist=abs(a-(0.785,4.893E-02))
  if(dist < 0.01) then
     print *,'c_sqrt4 : OK'
   else
     print *,'c_sqrt4 : NG a=',a
  endif

  call c_sqrt4_2(a2,b2,c2)
  dist=abs(a2-(0.785,4.893E-02))
  if(dist < 0.01) then
     print *,'c_sqrt4_2 : OK'
  else
     print *,'c_sqrt4_2 : NG a2=',a2
  endif

  call c_sqrt5(a,b,c)
  dist=abs(a-(3.272,3.786))
  if(dist < 0.01) then
     print *,'c_sqrt5 : OK'
   else
     print *,'c_sqrt5 : NG a=',a
  endif

  call c_sqrt5_2(a2,b2,c2)
  dist=abs(a2-(3.272,3.786))
  if(dist < 0.01) then
     print *,'c_sqrt5_2 : OK'
  else
     print *,'c_sqrt5_2 : NG a2=',a2
  endif

  call c_sqrt6(a,b,c)
  dist=abs(a-(-0.727,-2.213))
  if(dist < 0.01) then
     print *,'c_sqrt6 : OK'
   else
     print *,'c_sqrt6 : NG a=',a
  endif

  call c_sqrt6_2(a2,b2,c2)
  dist=abs(a2-(-0.727,-2.213))
  if(dist < 0.01) then
     print *,'c_sqrt6_2 : OK'
  else
     print *,'c_sqrt6_2 : NG a2=',a2
  endif

  call c_sqrt7(a,b,c)
  dist=abs(a-(0.185,5.388))
  if(dist < 0.01) then
     print *,'c_sqrt7 : OK'
   else
     print *,'c_sqrt7 : NG a=',a
  endif

  call c_sqrt7_2(a2,b2,c2)
  dist=abs(a2-(0.185,5.388))
  if(dist < 0.01) then
     print *,'c_sqrt7_2 : OK'
  else
     print *,'c_sqrt7_2 : NG a2=',a2
  endif

  call c_sqrt8(a,b,c)
  dist=abs(a-(0.377,-0.172))
  if(dist < 0.01) then
     print *,'c_sqrt8 : OK'
   else
     print *,'c_sqrt8 : NG a=',a
  endif

  call c_sqrt8_2(a2,b2,c2)
  dist=abs(a2-(0.377,-0.172))
  if(dist < 0.01) then
     print *,'c_sqrt8_2 : OK'
  else
     print *,'c_sqrt8_2 : NG a2=',a2
  endif
end program main
