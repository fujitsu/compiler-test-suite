      program main
      integer*4,parameter::low=1,upper=4
      complex*16 test9

      call test8(low,upper)
      print *, test9(low,upper)

      end

      subroutine test8(low,upper)
      integer*4 i
      integer*4 low,upper
      complex*8 t,ans(low:upper)
      do i=low,upper
         t = i
         ans(i)=precision(t)
      enddo

      print *,ans
      end

      complex*16 function test9(low,upper)
      integer*4 i
      integer*4 low,upper
      complex*16 t,ans(low:upper)
      do i=low,upper
         t = i
         ans(i)=precision(t)
      enddo
      test9=sum(ans)
      end
