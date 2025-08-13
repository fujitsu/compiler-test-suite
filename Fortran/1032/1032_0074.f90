        IMPLICIT REAL*8 (A-H,O-Z)
        IMPLICIT INTEGER*4 (I-N)
        PARAMETER (NM=50)
        REAL*8 A(NM,NM)
        N=5
        DO I1=1,N
        DO I2=1,N
        A(I1,I2)=I1+I2*0.1D0
        END DO
        END DO


        DO I1=1,N
        write(18,70)(A(I1,I2),I2=1,N)
        END DO
70      FORMAT(100(1X,F4.1))

        CALL TRAMAT(NM,N,(A), A,IERR)


        DO I1=1,N
        write(18,70)(A(I1,I2),I2=1,N)
        END DO

        call chK
        print *,'pass'
        END

        SUBROUTINE TRAMAT(NM,N,AMTRX, TMTRX,IERR)
        IMPLICIT REAL*8 (A-H,O-Z)
        IMPLICIT INTEGER*4 (I-N)
        INTEGER*4 NM,N
        REAL*8 AMTRX(NM,N)
        REAL*8 TMTRX(NM,N)
        INTEGER*4 IERR
        REAL*8 C
        INTEGER*4 I1,I2
        IF(N.LE.0)GOTO 101
        IF(NM.LT.N)GOTO 102

        DO 51 I1=1,N
        DO 52 I2=1,I1
        C=AMTRX(I1,I2)
        TMTRX(I1,I2)=AMTRX(I2,I1)
        IF(I1.NE.I2)TMTRX(I2,I1)=C
52      CONTINUE
51      CONTINUE
100     IERR=0
        RETURN
101     IERR=-1
        GOTO 1001
102     IERR=-2
        GOTO 1001
1001    PRINT *,'TRAMAT error!:',IERR
        RETURN
        END
        subroutine chk
        real(8)::a(5)
        rewind 18
 read(18,*) a; if (any(abs(a-(/1.1,1.2,1.3,1.4,1.5/))>0.0001))print *,'error-1'
 read(18,*) a; if (any(abs(a-(/2.1,2.2,2.3,2.4,2.5/))>0.0001))print *,'error-2'
 read(18,*) a; if (any(abs(a-(/3.1,3.2,3.3,3.4,3.5/))>0.0001))print *,'error-3'
 read(18,*) a; if (any(abs(a-(/4.1,4.2,4.3,4.4,4.5/))>0.0001))print *,'error-4'
 read(18,*) a; if (any(abs(a-(/5.1,5.2,5.3,5.4,5.5/))>0.0001))print *,'error-5'
 read(18,*) a; if (any(abs(a-(/1.1,2.1,3.1,4.1,5.1/))>0.0001))print *,'error-6'
 read(18,*) a; if (any(abs(a-(/1.2,2.2,3.2,4.2,5.2/))>0.0001))print *,'error-7'
 read(18,*) a; if (any(abs(a-(/1.3,2.3,3.3,4.3,5.3/))>0.0001))print *,'error-8'
 read(18,*) a; if (any(abs(a-(/1.4,2.4,3.4,4.4,5.4/))>0.0001))print *,'error-9'
 read(18,*) a; if (any(abs(a-(/1.5,2.5,3.5,4.5,5.5/))>0.0001))print *,'error-a'
        end
