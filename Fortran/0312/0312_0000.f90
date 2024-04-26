recursive subroutine sub
  implicit none
  integer i
  integer j
  integer k
  i = 1
  j = 2
  k = 3
  call inn
  contains
    recursive subroutine inn
      implicit none
      integer*8 diff1, diff2
      diff1 = abs(loc(j)-loc(i))
      diff2 = abs(loc(k)-loc(j))
      if (diff1 /= 4 .and. diff1 /= 8)  then 
        print *, 'NG1'
      endif
      if (diff2 /= 4 .and. diff2 /= 8)  then 
        print *, 'NG1'
      endif
    end subroutine inn
end

call sub
print *,'PASS'
end
 
