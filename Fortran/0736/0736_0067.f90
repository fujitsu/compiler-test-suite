 subroutine sub
 type x00
   integer,allocatable,dimension(:)::q011
   integer,allocatable,dimension(:)::q012
 end type
 type x0
   integer,allocatable,dimension(:)::z011
   integer,allocatable,dimension(:)::z012
   type(x00),dimension(2,1,3)  ::z013
 end type
 type x1
   integer                     ::x011
   integer,allocatable,dimension(:)::x012
   integer,allocatable,dimension(:)::x013
   type(x0)                    ::x014                    
 end type
 type x2
   integer                     ::y011
   type(x1),dimension(5,2)       ::y012
   integer,allocatable,dimension(:)::y013
end type
 type x3
   integer                       ::w000
   type(x2),dimension(3,2,4)     ::w011
   type(x1),dimension(4,2)       ::w012
   integer,allocatable,dimension(:)::w013
end type
 type(x3)::xv(2,3,4)
 type(x3)::yv(2,3,4)
 do k3=1,4
 do k2=1,3
 do k1=1,2
 if (allocated(xv(k1,k2,k3)%w013))write(6,*) "NG"
 do m3=1,4
 do m2=1,2
 do m1=1,3
  do n2=1,2
  do n1=1,5
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x012))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x013))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z011))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z012))write(6,*) "NG"
  do i3=1,3
  do i2=1,1
  do i1=1,2
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z013(i1,i2,i3)%q011))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z013(i1,i2,i3)%q012))write(6,*) "NG"
  end do
  end do
  end do
  end do
  end do
  if (allocated(xv(k1,k2,k3)%w011(m1,m2,m3)%y013))write(6,*) "NG"
 end do
 end do
 end do
 do m2=1,2
 do m1=1,4
  if (allocated(xv(k1,k2,k3)%w012(m1,m2)%x012))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w012(m1,m2)%x013))write(6,*) "NG"
  do n2=1,2
  do n1=1,5
  if (allocated(xv(k1,k2,k3)%w012(m1,m2)%x014%z011))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w012(m1,m2)%x014%z012))write(6,*) "NG"
  do i3=1,3
  do i2=1,1
  do i1=1,2
  if (allocated(xv(k1,k2,k3)%w012(m1,m2)%x014%z013(i1,i2,i3)%q011))write(6,*) "NG"
  if (allocated(xv(k1,k2,k3)%w012(m1,m2)%x014%z013(i1,i2,i3)%q012))write(6,*) "NG"
  end do
  end do
  end do
  end do
  end do
 end do
 end do
 end do
 end do
 end do
 do k3=1,4
 do k2=1,3
 do k1=1,2
 if (allocated(yv(k1,k2,k3)%w013))write(6,*) "NG"
 do m3=1,4
 do m2=1,2
 do m1=1,3
  do n2=1,2
  do n1=1,5
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x012))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x013))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z011))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z012))write(6,*) "NG"
  do i3=1,3
  do i2=1,1
  do i1=1,2
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z013(i1,i2,i3)%q011))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y012(n1,n2)%x014%z013(i1,i2,i3)%q012))write(6,*) "NG"
  end do
  end do
  end do
  end do
  end do
  if (allocated(yv(k1,k2,k3)%w011(m1,m2,m3)%y013))write(6,*) "NG"
 end do
 end do
 end do
 do m2=1,2
 do m1=1,4
  if (allocated(yv(k1,k2,k3)%w012(m1,m2)%x012))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w012(m1,m2)%x013))write(6,*) "NG"
  do n2=1,2
  do n1=1,5
  if (allocated(yv(k1,k2,k3)%w012(m1,m2)%x014%z011))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w012(m1,m2)%x014%z012))write(6,*) "NG"
  do i3=1,3
  do i2=1,1
  do i1=1,2
  if (allocated(yv(k1,k2,k3)%w012(m1,m2)%x014%z013(i1,i2,i3)%q011))write(6,*) "NG"
  if (allocated(yv(k1,k2,k3)%w012(m1,m2)%x014%z013(i1,i2,i3)%q012))write(6,*) "NG"
  end do
  end do
  end do
  end do
  end do
 end do
 end do
 end do
 end do
 end do
 end
 call sub
 call sub
 call sub
print *,'pass'
end
