      real * 8 a(20)
      N=0
      DO i=1,20
        a(i) = 1
      enddo
      if (n.ne.0) then
        DO i=1,20
          a(i) = 2
        enddo
      endif
      write(6,9) a
 9    format(5f10.5)
      stop
      end
