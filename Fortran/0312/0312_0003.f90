recursive subroutine sub
  implicit none
  real*8 i
  real*8 j(2)
  real*8 k(3)
  i = 1
  j = 2
  k = 3
  call inn
  contains
    recursive subroutine inn
      implicit none
      integer*8 diff1, diff2
      diff1 = loc(j)-loc(i)
      diff2 = loc(k)-loc(j)
      diff1 = abs(diff1)
      diff2 = abs(diff2)
      if (diff1 /= 8 .and. diff1 /= 16)  then 
        print *, 'NG1', diff1
      endif
      if (diff2 /= 24 .and. diff2 /= 32)  then 
        print *, 'NG2', diff2
      endif
    end subroutine inn
end

call sub
print *,'PASS'
end
 
