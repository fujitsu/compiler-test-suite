 subroutine sub
 type x1
   integer                     ::x011
   integer,allocatable,dimension(:)::x012
   integer                     ::x013
 end type
 type(x1)::xv(2,3)
 do i2=1,3
 do i1=1,2
 if (allocated(xv(i1,i2)%x012))write(6,*) "NG"
 end do
 end do
 allocate(xv(2,3)%x012(2))
 xv(2,3)%x012(1)=1
 if (xv(2,3)%x012(1)/=1)write(6,*) "NG"
 end
 call sub
 print *,'pass'
end
