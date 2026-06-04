subroutine test
  procedure(inn),pointer::p
  p => inn
  call sub(p)
contains 
  subroutine inn()
    print *, 'PASS'
  end subroutine inn
end subroutine test

program main
  call test
end program main
