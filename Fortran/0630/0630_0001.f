      implicit real*8 (a-h,o-z)
      parameter(maxn=10,k=10)
      real*8 a(k,maxn)
      n=maxn
      call inita(a,k,n)
      end

      subroutine inita(a,k,n)
      implicit real*8 (a-h,o-z)
      dimension  a(k,n)
      integer i,j,n,k
      do i=1,n
        do j=1,i
          a(i,j)=dsin(dfloat(i*j))
        end do
      end do

      if (INT(abs(a(10,10)*10)) .eq. 5) then
        write(6,*) "OK"
      else
        write(6,*) "NG"
      endif
      return
      end
