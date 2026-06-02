  !             CVCT6101            LEVEL=2        DATE=83.02.05
  !********************************************************************C
  !*  1. PROGRAM NAME   : CVCT6101                                    *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  !
  !     DATA FOR NO.1
  !
  type st1
     INTEGER*4  I10(5,5),I11(5,5),I12(5,5),I13(5,5),I14(5,5),I15(5,5)
     integer    I16(5,5)
  end type st1
  type(st1) :: str
  !
  DATA  str%I10/25*0/,str%I11/5*1,5*2,5*3,5*2,5*1/,str%I12/10*1,10*2,5*3/
  DATA      str%I13/3*1,3*-1,5*5,4*-3,10*2/,str%I14/25*0/,str%I15/15*1,10*2/
  DATA      str%I16/25*0/,I10S/0/ ,N11,N21,N31,N41/4*5/
  !
  !     DATA FOR NO.2
  !
  type st2
     REAL*4  R10(10),R11(10),R12(10,10)
  end type st2
  type(st2) :: str2
  DATA    R11S/1/,str2%R10/10*0/,str2%R11/1,2,3,4,5,6,7,8,9,10/,str2%R12/100*0/
1 DATA N1,N2,N3,N4/4*10/
  !
  !  TEST NO.1
  !
  WRITE(6,*) '***** CVCT6101 *****'
  WRITE(6,*) '----- TEST NO.1 -----'
  DO  I=1,N11
     DO  J=1,N21
        IF ( J.NE.1 .OR. J.NE. N2 ) THEN
           str%I10(I,J) = str%I10(I,J) + str%I11(I,J)*str%I12(I,J)
        ENDIF
10      CONTINUE
     enddo
     !
     DO  K=1,N31
22      IF ( str%I13(K,I) .LT. 0 ) GO TO 21
        str%I14(K,K) = str%I13(K,I)
        GO TO 20
21      str%I13(K,I) = str%I15(K,I)
        GO TO 22
20      CONTINUE
     enddo
     !
     DO  L=1,N41
        str%I16(L,I) = str%I10(L,L) + str%I11(L,L)
        I10S = I10S + str%I16(L,I)
30      CONTINUE
     enddo
100  CONTINUE
  enddo
  !
  WRITE(6,*) 'str%I10 = ',str%I10
  WRITE(6,*) 'str%I14 = ',str%I14
  WRITE(6,*) 'str%I13 = ',str%I13
  WRITE(6,*) 'str%I16 = ',str%I16
  WRITE(6,*) 'I10S = ',I10S
  !
  !
  WRITE(6,*) '----- TEST NO.2 -----'
  DO  I=1,N1
     DO  J=1,N2
        R10S = J
40      R11S = R11S  +R10S
     enddo
     !
     DO  K=1,N3
        ASSIGN 51 TO I11S
        GO TO I11S ,(51,50)
51      str2%R10(K) = str2%R10(K) + str2%R11(K)
50      CONTINUE
     enddo
     !
     DO  L=1,N4
        str2%R12(L,I) = str2%R10(L)
60      CALL SUB1(str2%R12,L)
     enddo
200  CONTINUE
  enddo
  !
  WRITE(6,*) ' R11S = ',R11S
  WRITE(6,*) ' str2%R10  = ',str2%R10
  WRITE(6,*) ' str2%R12  = ',str2%R12
  STOP
END program

SUBROUTINE SUB1(R12,L)
  REAL*4 R12(10,10)
  type st1
     REAL*4 R13(10,10)
  end type st1
  type(st1) :: str
  DATA str%R13/50*1.,50*2./
  DO  I=1,L
     R12(I,I) = R12(I,I) + str%R13(I,I)
10   CONTINUE
  enddo
  RETURN
END SUBROUTINE SUB1
