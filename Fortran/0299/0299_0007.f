      real a(100)
      integer*8 i

      do i=1,100
         a(i) = i
      enddo
      n = ifunc(10)

      DO 52 I=2,N
         s=A(I)
 52   continue
      write(6,*) s
      END

      integer function ifunc(nn)
      ifunc = nn
      return
      end
