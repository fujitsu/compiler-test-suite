recursive subroutine sub
  implicit none
  integer i
  integer j(2)
  integer k(3)
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
      if (diff1 /= 4  .and. diff1 /= 8 .and. diff1 /= 12)  then 
        print *, 'NG1', diff1
      endif
      if (diff2 /= 12 .and. diff2 /= 16)  then 
        print *, 'NG2'
      endif
    end subroutine inn
end

call sub
print *,'PASS'
end
 
