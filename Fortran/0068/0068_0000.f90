!
subroutine array_add4(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::a,b,c
  a(5)=b(5)+c(5)
end subroutine array_add4

subroutine array_add8(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  a(5)=b(5)+c(5)
end subroutine array_add8

subroutine array_sub4(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp),dimension(5)::a,b,c
  a(5)=b(5)-c(5)
end subroutine array_sub4

subroutine array_sub8(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  a(5)=b(5)-c(5)
end subroutine array_sub8

subroutine array_mul4(a,b,z)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  complex(xp)::z
  a(5)=b(5)*z
end subroutine array_mul4

subroutine array_mul8(a,b,z)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  complex(xp)::z
  a(5)=b(5)*z
end subroutine array_mul8

subroutine array_div4(a,b,z)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  complex(xp)::z
  a(5)=b(5)/z
end subroutine array_div4

subroutine array_div8(a,b,z)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  complex(xp)::z
  a(5)=b(5)/z
end subroutine array_div8

subroutine array_loop_add4(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size
     a(i)=b(i)+c(i)
  end do
end subroutine array_loop_add4

subroutine array_loop_add8(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size
     a(i)=b(i)+c(i)
  end do
end subroutine array_loop_add8

subroutine array_loop_sub4(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size
     a(i)=b(i)-c(i)
  end do
end subroutine array_loop_sub4

subroutine array_loop_sub8(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size
     a(i)=b(i)-c(i)
  end do
end subroutine array_loop_sub8

subroutine array_loop_mul4(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size                 
     a(i)=b(i)*c(i)
  end do
end subroutine array_loop_mul4

subroutine array_loop_mul8(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size                 
     a(i)=b(i)*c(i)
  end do
end subroutine array_loop_mul8

subroutine array_loop_div4(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size                 
     a(i)=b(i)/c(i)
  end do
end subroutine array_loop_div4

subroutine array_loop_div8(a,b,c,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c
  integer i,loop_size
  do i=1,loop_size                 
     a(i)=b(i)/c(i)
  end do
end subroutine array_loop_div8

subroutine array_add_real_loop(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  integer i,loop_size
  real(xp)::r4=10
  do i=1,loop_size
     a(i)=b(i)+r4
  end do
end subroutine array_add_real_loop

subroutine array_sub_real_loop(a,b,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b
  integer i,loop_size
  real(xp)::r4=10
  do i=1,loop_size
     a(i)=b(i)-r4
  end do
end subroutine array_sub_real_loop


subroutine array_mul_real_loop(a,b,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  integer i,loop_size
  real(xp)::r4=10
  do i=1,loop_size
     a(i)=b(i)*r4
  end do
end subroutine array_mul_real_loop

subroutine array_div_real_loop(a,b,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b
  integer i,loop_size
  real(xp)::r4=10
  do i=1,loop_size
     a(i)=b(i)/r4
  end do
end subroutine array_div_real_loop

subroutine multi_calc1(a,b,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,d
  integer i,loop_size
  do i=1,loop_size
     d(i)=b(i)+i
     a(i)=d(i)*i
  end do
end subroutine multi_calc1

subroutine multi_calc1_2(a,b,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,d
  integer i,loop_size
  do i=1,loop_size
     d(i)=b(i)+i
     a(i)=d(i)*i
  end do
end subroutine multi_calc1_2

subroutine multi_calc2(a,b,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,d
  integer i,loop_size
  do i=1,loop_size
     d(i)=b(i)-i
     a(i)=d(i)/i
  end do
end subroutine multi_calc2

subroutine multi_calc2_2(a,b,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,d
  integer i,loop_size
  do i=1,loop_size
     d(i)=b(i)-i
     a(i)=d(i)*i
  end do
end subroutine multi_calc2_2

subroutine array_conjg1(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)+conjg(b(i)+c(i))
  end do
end subroutine array_conjg1

subroutine array_conjg1_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)+conjg(b(i)+c(i))
  end do
end subroutine array_conjg1_2

subroutine array_conjg2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))+e(i)
  end do
end subroutine array_conjg2

subroutine array_conjg2_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))+e(i)
  end do
end subroutine array_conjg2_2

subroutine array_conjg3(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)-conjg(b(i)+c(i))
  end do
end subroutine array_conjg3

subroutine array_conjg3_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)-conjg(b(i)+c(i))
  end do
end subroutine array_conjg3_2

subroutine array_conjg4(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))-e(i)
  end do
end subroutine array_conjg4

subroutine array_conjg4_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))-e(i)
  end do
end subroutine array_conjg4_2


subroutine array_conjg5(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)*conjg(b(i)+c(i))
  end do
end subroutine array_conjg5

subroutine array_conjg5_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)*conjg(b(i)+c(i))
  end do
end subroutine array_conjg5_2

subroutine array_conjg6(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))*e(i)
  end do
end subroutine array_conjg6

subroutine array_conjg6_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))*e(i)
  end do
end subroutine array_conjg6_2

subroutine array_conjg7(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)/conjg(b(i)+c(i))
  end do
end subroutine array_conjg7

subroutine array_conjg7_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=e(i)/conjg(b(i)+c(i))
  end do
end subroutine array_conjg7_2

subroutine array_conjg8(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))/e(i)
  end do
end subroutine array_conjg8

subroutine array_conjg8_2(a,b,c,e,loop_size) 
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5)::a,b,c,e
  integer i,loop_size
  do i=1,loop_size
     a(i)=conjg(b(i)+c(i))/e(i)
  end do
end subroutine array_conjg8_2

subroutine multi_array1(a,b,c,d,e,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5,5,5,5,5)::a,b,c,d,e
  integer i1,i2,i3,i4,i5,loop_size
  do i1=1,loop_size
     do i2=1,loop_size
        do i3=1,loop_size
           do i4=1,loop_size
              do i5=1,loop_size
                 a(i1,i2,i3,i4,i5) = b(i1,i2,i3,i4,i5) + c(i1,i2,i3,i4,i5) - d(i1,i2,i3,i4,i5) * e(i1,i2,i3,i4,i5)
              end do
           end do
        end do
     end do
  end do
end subroutine multi_array1

subroutine multi_array1_2(a,b,c,d,e,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5,5,5,5,5)::a,b,c,d,e
  integer i1,i2,i3,i4,i5,loop_size
  do i1=1,loop_size
     do i2=1,loop_size
        do i3=1,loop_size
           do i4=1,loop_size
              do i5=1,loop_size
                 a(i1,i2,i3,i4,i5) = b(i1,i2,i3,i4,i5) + c(i1,i2,i3,i4,i5) - d(i1,i2,i3,i4,i5) * e(i1,i2,i3,i4,i5)
              end do
           end do
        end do
     end do
  end do
end subroutine multi_array1_2

subroutine multi_array2(a,b,c,d,e,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5,5,5,5,5)::a,e
  complex(xp),dimension(5,5,5,5)::d
  complex(xp),dimension(5,5)::c
  complex(xp),dimension(5,5,5)::b
  integer i1,i2,i3,i4,i5,loop_size
  do i1=1,loop_size
     do i2=1,loop_size
        do i3=1,loop_size
           do i4=1,loop_size
              do i5=1,loop_size
                 a(i1,i2,i3,i4,i5) = b(i1,i2,i3) + c(i1,i2) - d(i1,i2,i3,i4) * e(i1,i2,i3,i4,i5)
              end do
           end do
        end do
     end do
  end do
end subroutine multi_array2

subroutine multi_array2_2(a,b,c,d,e,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5,5,5,5,5)::a,e
  complex(xp),dimension(5,5,5,5)::d
  complex(xp),dimension(5,5)::c
  complex(xp),dimension(5,5,5)::b
  integer i1,i2,i3,i4,i5,loop_size
  do i1=1,loop_size
     do i2=1,loop_size
        do i3=1,loop_size
           do i4=1,loop_size
              do i5=1,loop_size
                 a(i1,i2,i3,i4,i5) = b(i1,i2,i3) + c(i1,i2) - d(i1,i2,i3,i4) * e(i1,i2,i3,i4,i5)
              end do
           end do
        end do
     end do
  end do
end subroutine multi_array2_2

subroutine multi_array3(a,b,c,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 4
  complex(xp),dimension(5,5,5,5,5)::a,b,e,f
  complex(xp),dimension(5,5)::c
  complex(xp),dimension(5,5,5)::d
  integer i1,i2,i3,i4,i5,loop_size
  do i1=1,loop_size
     do i2=1,loop_size
        do i3=1,loop_size
           do i4=1,loop_size
              do i5=1,loop_size
                 a(i1,i2,i3,i4,i5) = b(i1,i2,i3,i4,i5) * c(i1,i2) + d(i1,i2,i3) * (e(i1,i2,i3,i4,i5) - f(i5,i4,i3,i2,i1))
              end do
           end do
        end do
     end do
  end do
end subroutine multi_array3

subroutine multi_array3_2(a,b,c,d,e,f,loop_size)
  implicit none
  integer,parameter::xp = 8
  complex(xp),dimension(5,5,5,5,5)::a,b,e,f
  complex(xp),dimension(5,5)::c
  complex(xp),dimension(5,5,5)::d
  integer i1,i2,i3,i4,i5,loop_size
  do i1=1,loop_size
     do i2=1,loop_size
        do i3=1,loop_size
           do i4=1,loop_size
              do i5=1,loop_size
                 a(i1,i2,i3,i4,i5) = b(i1,i2,i3,i4,i5) * c(i1,i2) + d(i1,i2,i3) * (e(i1,i2,i3,i4,i5) - f(i5,i4,i3,i2,i1))
              end do
           end do
        end do
     end do
  end do
end subroutine multi_array3_2

program main
  implicit none
  integer,parameter::xp1 = 4 
  integer,parameter::xp2 = 8 
  complex(xp1)::z
  complex(xp2)::z2
  integer loop_size,i,j,k,l,m
  complex(xp1),dimension(5)::a,b,c,e
  complex(xp2),dimension(5)::a2,b2,c2,e2
  complex(xp1),dimension(5,5,5,5,5)::aa,bb,cc,dd,ee
  complex(xp2),dimension(5,5,5,5,5)::aa2,bb2,cc2,dd2,ee2
  complex(xp1),dimension(5,5)::ff
  complex(xp2),dimension(5,5)::ff2
  complex(xp1),dimension(5,5,5)::gg
  complex(xp2),dimension(5,5,5)::gg2
  complex(xp1),dimension(5,5,5,5)::hh
  complex(xp2),dimension(5,5,5,5)::hh2

  loop_size=5
  do i=1,loop_size
     b(i)=cmplx(i,i+1)
     c(i)=cmplx(i,i+2)
  end do

  do i=1,loop_size
     b2(i)=cmplx(i*i,i*i-1)
     c2(i)=cmplx(i*i,i*i+1)
  end do

  do i=1,loop_size
     e(i)=cmplx(i+1,i)
     e2(i)=cmplx(i+2,i)
  end do

  do i=1,loop_size
     do j=1,loop_size
        do k=1,loop_size
           do l=1,loop_size
              do m=1,loop_size
                 ee(i,j,k,l,m)=cmplx(i+2,i)
                 dd(i,j,k,l,m)=cmplx(i+2,i)
                 cc(i,j,k,l,m)=cmplx(i+2,i)
                 bb(i,j,k,l,m)=cmplx(i+2,i)
                 ee2(i,j,k,l,m)=cmplx(i+2,i)
                 dd2(i,j,k,l,m)=cmplx(i+2,i)
                 cc2(i,j,k,l,m)=cmplx(i+2,i)
                 bb2(i,j,k,l,m)=cmplx(i+2,i)
              end do
           end do
        end do
     end do
  end do

  do i=1,loop_size
     do j=1,loop_size
        ff(i,j)=cmplx(i+1,i)
        ff2(i,j)=cmplx(i+1,i)
     end do
  end do

  do i=1,loop_size
     do j=1,loop_size
        do k=1,loop_size
           gg2(i,j,k)=cmplx(i+1,i)
           gg(i,j,k)=cmplx(i+1,i)
        end do
     end do
  end do

  do i=1,loop_size
     do j=1,loop_size
        do k=1,loop_size
           do l=1,loop_size
              hh2(i,j,k,l)=cmplx(i+1,i)
              hh(i,j,k,l)=cmplx(i+1,i)
           end do
        end do
     end do
  end do

  z=(2.0,1.0)
  z2=(2.0,1.0)
  a = 0
  a2 = 0

  call array_add4(a,b,c)
  if(int(cabs(sum(a)))==16)then
     print *,'array_add4 : OK'
  else
     print *,'array_add4 : NG',int(cabs(sum(a))),'!=',16
  endif

  call array_add8(a2,b2,c2)
  if(int(cdabs(sum(a2)))==70)then
     print *,'array_add8 : OK'
  else
     print *,'array_add8 : NG',int(cdabs(sum(a2))),'!=',70
  endif

  call array_sub4(a,b,c)
  if(int(cabs(sum(a)))==1)then
     print *,'array_sub4 : OK'
  else
     print *,'array_sub4 : NG',int(cabs(sum(a))),'!=',1
  endif

  call array_sub8(a2,b2,c2)
  if(int(cdabs(sum(a2)))==2)then
     print *,'array_sub8 : OK'
  else
     print *,'array_sub8 : NG',int(cdabs(sum(a2))),'!=',2
  endif

  call array_mul4(a,b,z)
  if(int(cabs(sum(a)))==17)then
     print *,'array_mul4 : OK'
  else
     print *,'array_mul4 : NG ',int(cabs(sum(a))),'!=',17
  endif

  call array_mul8(a2,b2,z2)
  if(int(cdabs(sum(a2)))==77)then
     print *,'array_mul8 : OK'
  else
     print *,'array_mul8 : NG ',int(cdabs(sum(a2))),'!=',77
  endif

  call array_div4(a,b,z)
  if(int(cabs(sum(a)))==3)then
     print *,'array_div4 : OK'
  else
     print *,'array_div4 : NG ',int(cabs(sum(a))),'!=',3
  endif

  call array_div8(a2,b2,z2)
  if(int(cdabs(sum(a2)))==15)then
     print *,'array_div8 : OK'
  else
     print *,'array_div8 : NG ',int(cdabs(sum(a2))),'!=',15
  endif

  call array_loop_add4(a,b,c,loop_size)
  if(int(cabs(sum(a)))==54)then
     print *,'array_loop_add4 : OK'
  else
     print *,'array_loop_add4 : NG ',int(cabs(sum(a))),'!=',54
  endif

  call array_loop_add8(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==155)then
     print *,'array_loop_add8 : OK'
  else
     print *,'array_loop_add8 : NG ',int(cdabs(sum(a2))),'!=',155
  endif

  call array_loop_sub4(a,b,c,loop_size)
  if(int(cabs(sum(a)))==5)then
     print *,'array_loop_sub4 : OK'
  else
     print *,'array_loop_sub4 : NG ',int(cabs(sum(a))),'!=',5
  endif

  call array_loop_sub8(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==10)then
     print *,'array_loop_sub8 : OK'
  else
     print *,'array_loop_sub8 : NG ',int(cdabs(sum(a2))),'!=',10
  endif

  call array_loop_mul4(a,b,c,loop_size)
  if(int(cabs(sum(a)))==164)then
     print *,'array_loop_mul4 : OK'
  else
     print *,'array_loop_mul4 : NG ',int(cabs(sum(a))),'!=',164
  endif

  call array_loop_mul8(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==1958)then
     print *,'array_loop_mul8 : OK'
  else
     print *,'array_loop_mul8 : NG ',int(cdabs(sum(a2))),'!=',1958
  endif

  call array_loop_div4(a,b,c,loop_size)
  if(int(cabs(sum(a)))==4)then
     print *,'array_loop_div4 : OK'
  else
     print *,'array_loop_div4 : NG ',int(cabs(sum(a))),'!=',4
  endif

  call array_loop_div8(a2,b2,c2,loop_size)
  if(int(cdabs(sum(a2)))==3)then
     print *,'array_loop_div8 : OK'
  else
     print *,'array_loop_div8 : NG ',int(cdabs(sum(a2))),'!=',3
  endif

  call array_add_real_loop(a,b,loop_size)
  if(int(cabs(sum(a)))==68)then
     print *,'array_add_real_loop : OK'
  else
     print *,'array_add_real_loop : NG ',int(cabs(sum(a))),'!=',68
  endif

  call array_sub_real_loop(a,b,loop_size)
  if(int(cabs(sum(a)))==40)then
     print *,'array_sub_real_loop : OK'
  else
     print *,'array_sub_real_loop : NG ',int(cabs(sum(a))),'!=',40
  endif

  call array_mul_real_loop(a2,b2,loop_size)
  if(int(cdabs(sum(a2)))==743)then
     print *,'array_mul_real_loop : OK'
  else
     print *,'array_mul_real_loop : NG ',int(cdabs(sum(a2))),'!=',743
  endif

  call array_div_real_loop(a2,b2,loop_size)
  if(int(cdabs(sum(a2)))==7)then
     print *,'array_div_real_loop : OK'
  else
     print *,'array_div_real_loop : NG ',int(cdabs(sum(a2))),'!=',7
  endif

  call multi_calc1(a,b,loop_size) 
  if(int(cabs(sum(a)))==130)then
     print *,'multi_calc1 : OK'
  else
     print *,'multi_calc1 : NG ',int(cabs(sum(a))),'!=',130
  endif

  call multi_calc1_2(a2,b2,loop_size) 
  if(int(cdabs(sum(a2)))==350)then
     print *,'multi_calc1_2 : OK'
  else
     print *,'multi_calc1_2 : NG ',int(cdabs(sum(a2))),'!=',350
  endif

  call multi_calc2(a,b,loop_size) 
  if(int(cabs(sum(a)))==7)then
     print *,'multi_calc2 : OK'
  else
     print *,'multi_calc2 : NG ',int(cabs(sum(a))),'!=',7
  endif

  call multi_calc2_2(a2,b2,loop_size) 
  if(int(cdabs(sum(a2)))==270)then
     print *,'multi_calc2_2 : OK'
  else
     print *,'multi_calc2_2 : NG ',int(cdabs(sum(a2))),'!=',270
  endif

  call array_conjg1(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==58)then
     print *,'array_conjg1 : OK'
  else
     print *,'array_conjg1 : NG ',int(cabs(sum(a))),'!=',58
  endif

  call array_conjg1_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==165)then
     print *,'array_conjg1_2 : OK'
  else
     print *,'array_conjg1_2 : NG ',int(cdabs(sum(a2))),'!=',165
  endif

  call array_conjg2(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==58)then
     print *,'array_conjg2 : OK'
  else
     print *,'array_conjg2 : NG ',int(cabs(sum(a))),'!=',58
  endif

  call array_conjg2_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==165)then
     print *,'array_conjg2_2 : OK'
  else
     print *,'array_conjg2_2 : NG ',int(cdabs(sum(a2))),'!=',165
  endif

  call array_conjg3(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==60)then
     print *,'array_conjg3 : OK'
  else
     print *,'array_conjg3 : NG ',int(cabs(sum(a))),'!=',60
  endif

  call array_conjg3_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==151)then
     print *,'array_conjg3_2 : OK'
  else
     print *,'array_conjg3_2 : NG ',int(cdabs(sum(a2))),'!=',151
  endif

  call array_conjg4(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==60)then
     print *,'array_conjg4 : OK'
  else
     print *,'array_conjg4 : NG ',int(cabs(sum(a))),'!=',60
  endif

  call array_conjg4_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==151)then
     print *,'array_conjg4_2 : OK'
  else
     print *,'array_conjg4_2 : NG ',int(cdabs(sum(a2))),'!=',151
  endif

  call array_conjg5(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==308)then
     print *,'array_conjg5 : OK'
  else
     print *,'array_conjg5 : NG ',int(cabs(sum(a))),'!=',308
  endif

  call array_conjg5_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==1141)then
     print *,'array_conjg5_2 : OK'
  else
     print *,'array_conjg5_2 : NG ',int(cdabs(sum(a2))),'!=',1141
  endif

  call array_conjg6(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==308)then
     print *,'array_conjg6 : OK'
  else
     print *,'array_conjg6 : NG ',int(cabs(sum(a))),'!=',308
  endif

  call array_conjg6_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==1141)then
     print *,'array_conjg6_2 : OK'
  else
     print *,'array_conjg6_2 : NG ',int(cdabs(sum(a2))),'!=',1141
  endif

  call array_conjg7(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==2)then
     print *,'array_conjg7 : OK'
  else
     print *,'array_conjg7 : NG ',int(cabs(sum(a))),'!=',2
  endif

  call array_conjg7_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==2)then
     print *,'array_conjg7_2 : OK'
  else
     print *,'array_conjg7_2 : NG ',int(cdabs(sum(a2))),'!=',2
  endif

  call array_conjg8(a,b,c,e,loop_size) 
  if(int(cabs(sum(a)))==11)then
     print *,'array_conjg8 : OK'
  else
     print *,'array_conjg8 : NG ',int(cabs(sum(a))),'!=',11
  endif

  call array_conjg8_2(a2,b2,c2,e2,loop_size) 
  if(int(cdabs(sum(a2)))==22)then
     print *,'array_conjg8_2 : OK'
  else
     print *,'array_conjg8_2 : NG ',int(cdabs(sum(a2))),'!=' ,22
  endif

  call multi_array1(aa,bb,cc,dd,ee,loop_size)
  if(aa(5,5,5,5,5)==(-10.0,-60.0))then
     print *,'multi_array1 : OK'
  else
     print *,'multi_array1 : NG aa(5,5,5,5,5)=',aa(5,5,5,5,5)
  endif

  call multi_array1_2(aa2,bb2,cc2,dd2,ee2,loop_size)
  if(aa2(5,5,5,5,5)==(-10.0,-60.0))then
     print *,'multi_array1_2 : OK'
  else
     print *,'multi_array1_2 : NG aa2(5,5,5,5,5)=',aa2(5,5,5,5,5)
  endif

  call multi_array2(aa,gg,ff,hh,bb,loop_size)
  if(aa(5,5,5,5,5)==(-5.0,-55.0))then
     print *,'multi_array2 : OK'
  else
     print *,'multi_array2 : NG aa(5,5,5,5,5)=',aa(5,5,5,5,5)
  endif

  call multi_array2_2(aa2,gg2,ff2,hh2,bb2,loop_size)
  if(aa2(5,5,5,5,5)==(-5.0,-55.0))then
     print *,'multi_array2_2 : OK'
  else
     print *,'multi_array2_2 : NG aa2(5,5,5,5,5)=',aa2(5,5,5,5,5)
  endif

  call multi_array3(aa,bb,ff,gg,cc,dd,loop_size)
  if(aa(5,5,5,5,5)==(17.0,65.0))then
     print *,'multi_array3 : OK'
  else
     print *,'multi_array3 : NG aa(5,5,5,5,5)=',aa(5,5,5,5,5)
  endif

  call multi_array3_2(aa2,bb2,ff2,gg2,cc2,dd2,loop_size)
  if(aa2(5,5,5,5,5)==(17.0,65.0))then
     print *,'multi_array3_2 : OK'
  else
     print *,'multi_array3_2 : NG aa2(5,5,5,5,5)=',aa2(5,5,5,5,5)
  endif
end program main



