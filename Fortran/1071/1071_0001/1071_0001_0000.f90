  
program main
  implicit none
  interface
     subroutine test(i, ch)
       integer :: i
       character(*),target :: ch
     end subroutine test
  end interface
  call test(1, "ABC")
end program
!
!
!
  subroutine sub(f, ch)
  implicit none
  character(*) :: ch
    call f(ch)
  end subroutine sub
