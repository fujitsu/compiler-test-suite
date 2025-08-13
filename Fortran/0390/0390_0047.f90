 program pointer_check
   type gridpoint
     real :: a(10)
     real :: b(10)
     real, pointer :: c(:)
   end type

   type (gridpoint) :: g

g%c=>null()
   call sub_wo_pointer( x=g%a, y=g%b, z=g%c )

   call sub_with_pointer( x=g%a, y=g%b, z=g%c )

allocate(g%c(2))

   call sub_wo_pointer( x=g%a, y=g%b, z=g%c )

   call sub_with_pointer( x=g%a, y=g%b, z=g%c )
call chk
print *,'pass'

   contains
   subroutine sub_wo_pointer( x, y, z )
     implicit none
     real, intent(inout) :: x(:)
     real, intent(inout) :: y(:)
     real, intent (in), optional :: z(:)

     if( present( z ) ) then
       write(15,*) 11
     else
       write(15,*) 10
     endif
   end subroutine

   subroutine sub_with_pointer( x, y, z )
     implicit none
     real, intent(inout) :: x(:)
     real, intent(inout) :: y(:)
     real, intent (in), optional, pointer :: z(:)

     if( present( z ) ) then
       write(15,*) 21
     else
       write(15,*) 20
     endif
   end subroutine
 end program

subroutine chk
rewind 15
read(15,*) k;if (k/=10) print *,101
read(15,*) k;if (k/=21) print *,102
read(15,*) k;if (k/=11) print *,103
read(15,*) k;if (k/=21) print *,104
end
