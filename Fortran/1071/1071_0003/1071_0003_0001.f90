recursive subroutine test(i, ch)
  implicit none
  integer, pointer, dimension (:,:)  :: i
  procedure(inn),pointer::p
  character(*) ,target:: ch
  p => inn
  call sub(p, ch)
  contains 
    recursive subroutine inn(ach)
      character(*),target :: ach
      integer ss(2)
      if (i(1,2).eq.1 .and. ch .eq. "ABC") then
         print *, 'PASS'
      else
         print *, 'NG'
      endif
      if (loc(ch) .ne. loc(ach)) then
         print *, 'NG 2'
      endif
      ss = shape(i)
      if (ss(1) .ne. 2 .or. ss(2) .ne. 3) then
         print *, 'NG 3'
      endif
    end subroutine inn
  end subroutine test
