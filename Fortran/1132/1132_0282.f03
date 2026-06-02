!             CVCT6117            LEVEL=4        DATE=83.12.06
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6117                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       .                                          *C
!*  3. RESULTS        :  LIST VECTOR                                *C
!*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
!*  5. HISTORY        :  1983.10.29                                 *C
!********************************************************************C
PROGRAM CV6117
  DATA  N10/10/
  !
  !     DATA FOR NO.1
  !
  type st1
     INTEGER*4   L10(10),L20(10,10),L1S,L2S
     REAL*4      A(10),B(10),C(10),D(10,10),E(10,10),S1,S2
     REAL*8      DA(10),DB(10),DC(10),DD(10,10),DE(10,10),D1,D2
     REAL*8      QA(10),QB(10),QC(10),QD(10,10),QE(10,10)
  end type st1
  type(st1) :: str
  !
  !
  DO I=1,10
     str%L10(I) = I
     str%A(I) = 0.0
     str%B(I) = I
     str%C(I) = I*2
     str%DA(I) = 0.0
     str%DB(I) = I
     str%DC(I) = -I
     str%QA(I) = 0.0
     str%QB(I) = I
     str%QC(I) = I*4
     DO  J=1,10
        str%D(I,J) = J + I
        str%E(I,J) = J - I
        str%DD(I,J) = str%E(I,J)
        str%DE(I,J) = str%E(I,J)  -I
        str%QD(I,J) = I*J
        str%QE(I,J) = I-J
10      str%L20(I,J) = J
     enddo
  enddo
  !
  WRITE(6,*) str%L10,str%L20
  WRITE(6,*) '***** CVCT6117 *****'
  WRITE(6,*) '----- NO.1 -----'
  DO  I=1,N10
     str%A(str%L10(I)) = str%C(I)
     str%DA(str%L10(I)) = DFLOAT(I)
     str%B(I) = str%C(str%L10(I))
     str%DB(I) = str%DC(str%L10(I))
100  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' DA   = ',str%DA
  WRITE(6,*) ' B    = ',str%B
  WRITE(6,*) ' str%DB   = ',str%DB
  !
  WRITE(6,*) '----- NO.2 -----'
  DO  I=1,N10
     str%A(str%L10(I)) = str%C(str%L10(I))
     str%DA(str%L10(I)) = str%DC(str%L10(I))
200  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' str%DA   = ',str%DA
  !
  WRITE(6,*) '----- NO.3 -----'
  DO  I=1,N10
     str%A(str%L20(I,I)) = str%C(I)
     str%DA(str%L20(I,I)) = DFLOAT(I)
     str%B(I) = str%C(str%L20(I,I))
     str%DB(I) = str%DC(str%L20(I,I))
300  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' str%DA   = ',str%DA
  WRITE(6,*) ' B    = ',str%B
  WRITE(6,*) ' str%DB   = ',str%DB
  !
  WRITE(6,*) '----- NO.4 -----'
  DO  I=1,N10
     str%A(str%L20(I,I)) = str%B(str%L20(I,I))
     str%DA(str%L20(I,I)) = str%DB(str%L20(I,I))
400  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' str%DA   = ',str%DA
  !
  WRITE(6,*) '----- NO.5 -----'
  DO  I=1,N10
     str%A(str%L10(I)) = str%C(str%L10(I))
     str%DA(str%L10(I)) = str%DC(str%L10(I))
500  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' str%DA   = ',str%DA
  !
  WRITE(6,*) '----- NO.6 -----'
  DO  I=1,N10
     L1S = str%L10(I)
     str%A(L1S) = str%B(L1S) + str%C(L1S)
     str%DA(str%L10(I)) = str%DC(L1S)
     str%QA(I) = str%QB(L1S)
600  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' str%DA   = ',str%DA
  WRITE(6,*) ' str%QA   = ',str%QA
  !
  WRITE(6,*) '----- NO.7 -----'
  DO  I=1,N10
     L2S = str%L20(I,I)
     str%A(L2S) = str%B(L2S) + str%C(L2S)
     str%DA(str%L20(I,I)) = str%DC(L2S)
     str%QA(I) = str%QB(L1S)
700  CONTINUE
  enddo
  WRITE(6,*) ' str%A    = ',str%A
  WRITE(6,*) ' str%DA   = ',str%DA
  WRITE(6,*) ' str%QA   = ',str%QA
  !
  WRITE(6,*) '----- NO.8 -----'
  DO  I=1,N10
     L1S = str%L10(I)
     str%D(L1S,I) = str%E(str%L10(I),L1S) + str%C(L1S)
801  str%DD(str%L10(I),str%L10(I)) = str%DE(L1S,L1S)
     str%QD(I,L1S) = str%QE(L1S,str%L20(I,I))
800  CONTINUE
  enddo
  WRITE(6,*) ' str%D    = ',str%D
  WRITE(6,*) ' str%DD   = ',str%DD
  WRITE(6,*) ' str%QD   = ',str%QD
  !
  WRITE(6,*) '----- NO.9 -----'
  DO  I=1,N10
901  L2S = str%L20(I,I)
     str%D(L2S,str%L20(I,I)) = str%E(L2S,L2S) + str%C(L2S)
     str%DD(str%L20(I,I),str%L20(I,I)) = str%DE(str%L20(I,I),L2S)
     str%QD(I,str%L20(I,I)) = str%QE(L2S,L2S)
900  CONTINUE
  enddo
  WRITE(6,*) ' str%D    = ',str%D
  WRITE(6,*) ' str%DD   = ',str%DD
  WRITE(6,*) ' str%QD   = ',str%QD
  STOP
END PROGRAM CV6117
