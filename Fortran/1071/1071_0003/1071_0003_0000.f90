  
program main
  implicit none
  interface
     subroutine test(i, ch)
       integer, pointer, dimension (:,:)  :: i
       character(*),target :: ch
     end subroutine test
  end interface
  integer, pointer, dimension (:,:)  :: p
  integer, target, dimension (2,3)  :: i = 1
  p => i
  call test(p, "ABC")
end program
!
!
!
  subroutine sub(f, ch)
  implicit none
  character(*) :: ch
    call f(ch)
  end subroutine sub
