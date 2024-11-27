 subroutine sub
 type x1
   integer                     ::x011
   integer,allocatable,dimension(:)::x012
   integer,allocatable,dimension(:)::x013
 end type
 type x2
   integer                     ::y011
   type(x1),dimension(4)       ::y012
   integer,allocatable,dimension(:)::y013
end type
 type(x2)::xv(2,3)
 do k2=1,3
 do k1=1,2
 if (allocated(xv(k1,k2)%y013))write(6,*) "NG"
 allocate(xv(k1,k2)%y013(2))
 xv(k1,k2)%y013(2)=1
   do kk=1,4
    if (allocated(xv(k1,k2)%y012(kk)%x012))write(6,*) "NG"
    if (allocated(xv(k1,k2)%y012(kk)%x013))write(6,*) "NG"
    allocate(xv(k1,k2)%y012(kk)%x012(2))
    xv(k1,k2)%y012(kk)%x012(2)=2
    allocate(xv(k1,k2)%y012(kk)%x013(2))
    xv(k1,k2)%y012(kk)%x013(2)=2
   end do
 end do
 end do
 if (xv(2,3)%y013(2)/=1)write(6,*) "NG"
 if (xv(2,3)%y012(2)%x012(2)/=2)write(6,*) "NG"
 if (xv(2,3)%y012(2)%x013(2)/=2)write(6,*) "NG"
 end
 call sub
 call sub
 call sub
print *,'pass'
end
