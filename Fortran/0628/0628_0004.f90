 real, pointer:: pp
 allocate(pp)
 call sub(pp)
 print *,"pass"
 contains 
  subroutine sub(p)
    real, pointer,intent(in) :: p 
    p=1
  end subroutine
end