      program main
      integer ifunc1
      integer i0,i1,i2
      i0 = ifunc1(0)
      i1 = ifunc1(1)
      i2 = ifunc1(2)
      if(i0/=32000)print *,'error-1'
      if(i1/=32000)print *,'error-2'
      if(i2/=32001)print *,'error-3'
      print *,'pass'
      stop
      end
      INTEGER FUNCTION ifunc1(N)
      integer i_return,LAB
      save LAB
      IF ( N .GT. 0 ) THEN
        i_return = LAB
        LAB=LAB+N
      ELSE
        LAB=32000
        i_return = LAB
      ENDIF
      ifunc1 = i_return
      RETURN
      END
