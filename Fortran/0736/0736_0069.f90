  do i=1,1000
   call sub(fun())
  end do
   print *,'pass'
   contains
   function fun()
   integer,allocatable,dimension(:)::fun
   if (allocated(fun))write(6,*) "NG"
   allocate(fun(1:2))
   fun=(/1,2/)
   end function
   subroutine sub(k)
   integer,dimension(:)::k
   if (ubound(k,dim=1)/=2)write(6,*) "NG"
   if (any(k/=(/1,2/)))write(6,*) "NG"
   end subroutine sub
   end
