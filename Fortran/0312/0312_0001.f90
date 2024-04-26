recursive subroutine sub
  implicit none
  real*4  i
  real*8  j
  real*16 k
  i = 1
  j = 2
  k = 3
  call inn
  contains
    recursive subroutine inn
      implicit none
      integer*8 diff1, diff2
      diff1 = (loc(j)-loc(i))          
      diff2 = (loc(k)-loc(j))
      if (diff1 /= -8 .and. diff1 /= -12)  then 
        print *, 'NG1'
      endif
      if (diff2 /= -16)  then 
        print *, 'NG2'
      endif
    end subroutine inn
end

call sub
print *,'PASS'
end
 
