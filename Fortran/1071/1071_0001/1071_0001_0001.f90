recursive subroutine test(i, ch)
  implicit none
  procedure(inn),pointer::p
  integer :: i
  character(*),target :: ch
  p => inn
  call sub(p, ch)
  contains 
    recursive subroutine inn(ach)
      character(*),target :: ach
      if (i.eq.1 .and. ch .eq. "ABC") then
         print *, 'PASS'
      else
         print *, 'NG'
      endif
      if (loc(ch) .ne. loc(ach)) then
         print *, 'NG 2'
      endif
    end subroutine inn
  end subroutine test
