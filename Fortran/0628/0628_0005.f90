interface
  subroutine sub(p)
    real, pointer,intent(in) :: p 
  end subroutine
end interface

 real, pointer:: pp
 allocate(pp)
 call sub(pp)
 print *,"pass"
end

subroutine sub(p)
  real, pointer,intent(in) :: p 
  p=1
end subroutine
