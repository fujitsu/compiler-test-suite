recursive function   test(i, ch) result(res)
  implicit none
  real res
  procedure(inn),pointer:: p
  integer, allocatable, dimension (:,:)  :: i
  character(*),target :: ch
  real::sub
  p => inn
  res=sub(p, ch)
  contains 
    recursive function   inn(ach)
      character(*),target :: ach
      real::inn
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
      inn=6
    end function   inn
  end function   test
