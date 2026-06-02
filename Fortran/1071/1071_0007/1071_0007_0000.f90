recursive subroutine test
  procedure(inn),pointer,save:: p


  call sub(p)

  return 
entry init

  p=>inn

contains 
  recursive subroutine inn(k)
    k=k+1
  end subroutine inn
end subroutine test

program main
  call init
  call test
end program main
