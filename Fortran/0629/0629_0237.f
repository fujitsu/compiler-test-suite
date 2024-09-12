      COMMON /FSIGMU/ SIG(10)
      common /FORCIN/snow1(10)
      REAL  ENTR(2:10)
      SIG=1
      do i=1,10
        snow1(i) = i+2
      enddo
      rnn = 1
      DO K=2,10
        ENTR(K)=SIG(K)
      ENDDO
      write(6,*) ENTR
      call PDRIVER(rnn)
      END

      SUBROUTINE PDRIVER (TYEAR)
      COMMON /PHYTEN/QT_PBL(10,10)
      common /FORCIN/snow1(10)

      DO J=1,10
        SNOWC=SNOW1(J)
      ENDDO
      write(6,*) SNOWC

      RETURN
      END
