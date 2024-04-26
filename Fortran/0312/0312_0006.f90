recursive subroutine sub
  implicit none
  type TAG1 ; integer*1 i(8); end type; type(TAG1) st1(3)
  type TAG2 ; integer*4 j(2); end type; type(TAG2) st2(2)
  type TAG3 ; real*8 k; end type; type(TAG3) st3
  st1(1)%i = 1
  st2(1)%j = 2
  st3%k = 3
  call inn
  contains
    recursive subroutine inn
      implicit none
      integer*8 diff1, diff2
      diff1 = loc(st2(1)%j)-loc(st1(1)%i)
      diff2 = loc(st3%k)-loc(st2(1)%j)
      if (diff1 /= -16)  then 
        print *, 'NG1', diff1
      endif
      if (diff2 /= -8 .and. diff2 /= -16)  then  
        print *, 'NG2', diff2
      endif
    end subroutine inn
end

call sub
print *,'PASS'
end
 
