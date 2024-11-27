 subroutine sub(i2,i3)
 type x1
   integer                     ::x011
   integer,allocatable,dimension(:)::x012
   integer                     ::x013
 end type
 type(x1)::xv(i2,i3)
 do k2=1,i3
 do k1=1,i2
 if (allocated(xv(k1,k2)%x012))write(6,*) "NG"
 end do
 end do
 allocate(xv(2,3)%x012(2))
 xv(2,3)%x012(1)=1
 if (xv(2,3)%x012(1)/=1)write(6,*) "NG"
 end
 call sub(2,3)
 call sub(2,3)
 call sub(2,3)
 print *,'pass'
end
