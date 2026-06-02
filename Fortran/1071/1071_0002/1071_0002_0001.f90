recursive subroutine test(i)
  implicit none
  procedure(inn),pointer::p
  integer :: i
  p => inn
  call sub(p)
  contains 
    recursive subroutine inn
      if (i.eq.1) then
         print *, 'PASS'
      else
         print *, 'NG'
      endif
    end subroutine inn
  end subroutine test
