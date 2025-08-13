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

   call sub_wo_pointer(  y=g%b, z=g%c ,x=g%a )
   call sub_with_pointer( y=g%b, z=g%c , x=g%a)

   call sub_wo_pointer(  z=g%c ,x=g%a , y=g%b )
   call sub_with_pointer( z=g%c , x=g%a , y=g%b)


allocate(g%c(2))

   call sub_wo_pointer( x=g%a, y=g%b, z=g%c )

   call sub_with_pointer( x=g%a, y=g%b, z=g%c )

   call sub_wo_pointer(  y=g%b, z=g%c ,x=g%a )
   call sub_with_pointer( y=g%b, z=g%c , x=g%a)

   call sub_wo_pointer(  z=g%c ,x=g%a , y=g%b )
   call sub_with_pointer( z=g%c , x=g%a , y=g%b)
call chk
print *,'pass'

   contains
   subroutine sub_wo_pointer( x,  z , y )
     implicit none
     real, intent(inout) :: x(:)
     real, intent(inout) :: y(:)
     real, intent (in), optional :: z(:)

     if( present( z ) ) then
       write(16,*) 11
     else
       write(16,*) 10
     endif
   end subroutine

   subroutine sub_with_pointer( x, z , y )
     implicit none
     real, intent(inout) :: x(:)
     real, intent(inout) :: y(:)
     real, intent (in), optional, pointer :: z(:)

     if( present( z ) ) then
       write(16,*) 21
     else
       write(16,*) 20
     endif
   end subroutine
 end program

subroutine chk
rewind 16
read(16,*) k;if (k/=10) print *,101
read(16,*) k;if (k/=21) print *,102
read(16,*) k;if (k/=10) print *,1011
read(16,*) k;if (k/=21) print *,1021
read(16,*) k;if (k/=10) print *,1012
read(16,*) k;if (k/=21) print *,1022
read(16,*) k;if (k/=11) print *,103
read(16,*) k;if (k/=21) print *,104
read(16,*) k;if (k/=11) print *,1031
read(16,*) k;if (k/=21) print *,1041
read(16,*) k;if (k/=11) print *,1032
read(16,*) k;if (k/=21) print *,1042
end
