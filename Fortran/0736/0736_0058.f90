 subroutine sub
 type x1
   integer                     ::x011
   integer,allocatable,dimension(:)::x012
   integer                     ::x013
 end type
 type(x1)::xv
 if (allocated(xv%x012))write(6,*) "NG"
 allocate(xv%x012(2))
 xv%x012(1)=1
 if (xv%x012(1)/=1)write(6,*) "NG"
 print *,'pass'
 end
call sub
end
