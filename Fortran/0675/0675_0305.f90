      module mod
      private
      real*8 a(100),b(10,10)
      public a,b
      integer*4 i
      DATA a/100*1/
      DATA b/100*3/
      end module

      call sub()
      end

      subroutine sub( )
      use mod
      n=1
      DO j=1,10
        DO i=1,10
          b(i,j)=sin(a(n))+j*i
          n=n+1
        enddo
      enddo

      write(6,*)"b=",b
      end subroutine
