program main

  interface
      subroutine foo( p )
          real, pointer :: p
      end subroutine foo
      subroutine fop( p )
          real, pointer :: p
      end subroutine fop
      subroutine ps( p, c )
          real, pointer :: p
          character(len=*), intent(in) :: c
      end subroutine ps
  end interface

  real, pointer :: a, z

  nullify( a, z ) ; call ps( z, "z" )

  allocate( a )   ; a = 3.14
  z => a          ; call ps( z, "z" )

  deallocate( a ) ; call ps( z, "z" )

  call foo( z )   ; call ps( z, "z" )

  call fop( z )   ; call ps( z, "z" )
  print *,'pass'

end program main

subroutine foo( p )
   real, target  :: c
   real, pointer :: p
   c = 2.1
   p => c
   return
end subroutine foo

subroutine fop( p )
   real, pointer :: c
   real, pointer :: p
   allocate(c) ; c = 5.3
   p => c
   deallocate(c)
   return
end subroutine fop

subroutine ps( p, name )
  real, pointer :: p
  character(len=*), intent(in) :: name
  character(len=40+len(name))  :: answer
  answer = " "
  write(answer(1:30+len(name)),"(A,L1)")  &
	name //" is associated (T/F): ", associated( p )
  if( associated(p) ) then
      write(answer(32+len(name):),"(F8.3)") p
  else
      write(answer(32+len(name):),"(A)") " "
  end if
  write(1,*) answer

  return
end subroutine ps
