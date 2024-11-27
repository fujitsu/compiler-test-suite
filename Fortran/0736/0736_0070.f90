   integer,allocatable,dimension(:)::x
   if (allocated(x))write(6,*) "NG"
   call sub1(x)
   if (.not.allocated(x))write(6,*) "NG"
   call sub2(x)
   if (.not.allocated(x))write(6,*) "NG"
   call sub3(x)
   if (allocated(x))write(6,*) "NG"
   print *,'pass'
   contains
   subroutine sub1(k)
   integer,allocatable,dimension(:)::k
   if (allocated(k))write(6,*) "NG"
   allocate(k(2:3))
   k=(/1,2/)
   end subroutine sub1
   subroutine sub2(k)
   integer,allocatable,dimension(:)::k
   if (.not.allocated(k))write(6,*) "NG"
   if (ubound(k,dim=1)/=3)write(6,*) "NG"
   if (any(k/=(/1,2/)))write(6,*) "NG"
   end subroutine sub2
   subroutine sub3(k)
   integer,allocatable,dimension(:)::k
   deallocate(k)
   if (allocated(k))write(6,*) "NG"
   end subroutine sub3
   end
