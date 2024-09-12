subroutine sub  
  complex(kind=8),target  :: s0 = (2.0,3.0)
  type ty1
     complex(kind=8),pointer :: p0 => s0
     real(kind=8),pointer :: r0 => s0%im
     real(kind=8),pointer :: r1 => s0%re
  end type ty1
  type(ty1)::str

  print *, str%p0
  print *, str%r0
  print *, str%r1
end subroutine sub
call sub
end program
