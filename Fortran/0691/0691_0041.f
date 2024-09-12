      WRITE (6,10)
   10 FORMAT (1H1/2X,29H*FORTRAN*               ENTER )
   20 FORMAT (1H0/2X,29H*FORTRAN*               EXIT  )
      WRITE (6,30)
   30 FORMAT ('***OK***')
      CALL EXIT
      WRITE (6,40)
   40 FORMAT ('***ERROR***')
      WRITE (6,20)
      STOP  9999
      END
      SUBROUTINE  EXIT
      STOP
      END
