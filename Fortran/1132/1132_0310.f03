!             CVCT6500            LEVEL=3        DATE=86.11.20
!
! 1. PROGRAM NAME : CVCT6500
! 2. PURPOSE      : OPERATION SELECTION FOR VP(400)
! 3. RESULT       : MASK-LIST-MASK-LIST
! 4. ENVIRONMENT  : VP(400)
! 5. HISTORY      : 1986-11-18
!
PROGRAM CV6500
  type st1
     REAL    EA(100),EB(100)/100*1/,EC(100)
     INTEGER IA(100)/95,99*1/,IB(100)/100*0/,IC(100)
  end type st1
  type(st1) :: str
  !
  J=0
  K=0
  str%EC = 0
  str%IC = 0
  str%EA(1)=1
  !ocl NOVREC(str%EB,str%IB)
  DO  I=2,100
     str%EA(I)=I
     str%IC(I)=I
     IF(str%EA(I).GT.50) THEN
        J=J+1
        str%EB(J)=str%EA(I)*str%EA(1)
        str%EC(I)=str%EA(I)
        str%IA(I)=str%IA(1)+5
        str%EB(K+1)=str%IB(I)*2+str%IC(I)+INT(str%EA(I))/str%IA(I)
        K=K+1
        str%EA(I)=str%EB(K)/2.0
        str%EC(I)=str%IB(str%IA(I))+str%EA(I)
        NT=str%IA(1)/2
        str%IB(I)=str%IB(I)+NT+str%IA(1)*5/3
     ENDIF
  enddo
  !
  WRITE(6,1) str%EA
  write(6,*)
  WRITE(6,1) str%EB
  write(6,*)
  WRITE(6,1) str%EC
  write(6,*)
  WRITE(6,*) str%IA
  write(6,*)
  WRITE(6,*) str%IB
  write(6,*)
  WRITE(6,*) str%IC
  WRITE(6,*) K,J
  1 format(10f8.3)
END PROGRAM CV6500
