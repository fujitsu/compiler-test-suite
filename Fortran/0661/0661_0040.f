      INTEGER*2,PARAMETER::NC2=5
      INTEGER*4,PARAMETER::NC4=5
      INTEGER*1,dimension(3:5)::RH1
      INTEGER*2,dimension(3:5)::RH2
      INTEGER*4,dimension(3:5)::RH4
      LOGICAL*1 L1
      LOGICAL*4 L4
      L1=.FALSE.
      L4=.FALSE.
      RH1=1
      RH2=2
      RH4=3
      write(*,*) NOT(RH1)
      write(*,*) NOT(RH2)
      write(*,*) NOT(RH4)
      write(*,*) IAND(RH1,RH1)
      write(*,*) IAND(RH2,RH2)
      write(*,*) IAND(RH4,RH4)
      write(*,*) IOR(RH1,RH1)
      write(*,*) IOR(RH2,RH2)
      write(*,*) IOR(RH4,RH4)
      write(*,*) IEOR(RH1,RH1)
      write(*,*) IEOR(RH2,RH2)
      write(*,*) IEOR(RH4,RH4)
      write(*,*) IBSET(RH1,NC2)
      write(*,*) IBSET(RH2,NC2)
      write(*,*) IBSET(RH4,NC2)
      write(*,*) IBSET(RH1,NC4)
      write(*,*) IBSET(RH2,NC4)
      write(*,*) IBSET(RH4,NC4)
      write(*,*) IBCLR(RH1,NC2)
      write(*,*) IBCLR(RH2,NC2)
      write(*,*) IBCLR(RH4,NC2)
      write(*,*) IBCLR(RH1,NC4)
      write(*,*) IBCLR(RH2,NC4)
      write(*,*) IBCLR(RH4,NC4)
      write(*,*) BTEST(RH1,NC2)
      write(*,*) BTEST(RH2,NC2)
      write(*,*) BTEST(RH4,NC2)
      write(*,*) BTEST(RH1,NC4)
      write(*,*) BTEST(RH2,NC4)
      write(*,*) BTEST(RH4,NC4)
      write(*,*) '*****PASS*****'
      STOP
      END
