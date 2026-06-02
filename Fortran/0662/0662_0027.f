      CHARACTER*(1),pointer,DIMENSION(:,:)::B,C
      CHARACTER*(2),pointer,DIMENSION(:,:)::A
      CALL S1(A,B,C)
      PRINT *,'PASS'
      CONTAINS
        SUBROUTINE SG(A,B,C,I)
        CHARACTER*(*),pointer,DIMENSION(:,:)::A,B,C
        SELECT CASE(I)
           CASE (4,2)
             DEALLOCATE(A,B,C)
           CASE DEFAULT
        END SELECT
        END subroutine
        SUBROUTINE SU(A,B,C,I)
        CHARACTER*(*),pointer,DIMENSION(:,:)::A,B,C
        SELECT CASE(I)
           CASE (3,1)
             ALLOCATE(A(-I:+I,-I:+I))
             ALLOCATE(B(-I:+I,-I:+I))
             ALLOCATE(C(-I:+I,-I:+I))
             B='2'
             C='2'
           CASE DEFAULT
        END SELECT
        END subroutine
        SUBROUTINE S1(A,B,C)
        CHARACTER*(*),pointer,DIMENSION(:,:)::A,B,C
        CHARACTER*2,X1(-10:+10,-10:+10),X2(- 5:+ 5,- 5:+ 5),
     1              X3(- 3:+ 3,- 3:+ 3),X4(- 1:+ 1,- 1:+ 1)
        CHARACTER*1,Y1(-10:+10,-10:+10),Y2(- 5:+ 5,- 5:+ 5),
     1              Y3(- 3:+ 3,- 3:+ 3),Y4(- 1:+ 1,- 1:+ 1)
        CHARACTER*1,Z1(-10:+10,-10:+10),Z2(- 5:+ 5,- 5:+ 5),
     1              Z3(- 3:+ 3,- 3:+ 3),Z4(- 1:+ 1,- 1:+ 1)
        DO I=10,1,-1
           OPEN(I+15,DELIM='APOSTROPHE')
           SELECT CASE(I)
           CASE (10,5)
             ALLOCATE(A(-I:+I,-I:+I))
             ALLOCATE(B(-I:+I,-I:+I))
             ALLOCATE(C(-I:+I,-I:+I))
             B='1'
             C='1'
           CASE DEFAULT
           END SELECT
           CALL SU(A,B,C,I)
           A=B//C
           WRITE(UNIT=I+15,FMT=*) A,B,C
           WRITE(UNIT=I+15,FMT=*) A(:,:),B(:,:),C(:,:)
           SELECT CASE(I)
           CASE (10,9,8,7,6)
             X1=A
             Y1=B
             Z1=C
             DO I1A=-10,10
             DO I2A=-10,10
                IF (A(I1A,I2A).NE.'11') PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X1(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y1(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z1(I1A,I2A))PRINT *,'FAIL'
                CALL SX(A//B//C,-10,+10)
             ENDDO
             ENDDO
           CASE (5,4)
             CALL SX(A//B//C,- 5,+ 5)
             X2=A
             Y2=B
             Z2=C
             DO I1A=-5 , 5
             DO I2A=-5 , 5
                IF (A(I1A,I2A).NE.'11') PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X2(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y2(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z2(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
           CASE (3,2)
             X3=A
             Y3=B
             Z3=C
             CALL SX(A//B//C,- 3,+ 3)
             DO I1A=-3 , 3
             DO I2A=-3 , 3
                IF (A(I1A,I2A).NE.'22') PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X3(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y3(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z3(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
           CASE (1)
             X4=A
             Y4=B
             Z4=C
             CALL SX(A//B//C,- 1,+ 1)
             DO I1A=-1 , 1
             DO I2A=-1 , 1
                IF (A(I1A,I2A).NE.'22') PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X4(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y4(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z4(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
           ENDSELECT
           SELECT CASE(I)
           CASE (6:10)
             X1=''
             Y1=''
             Z1=''
           CASE (4:5)
             X2=''
             Y2=''
             X2=''
           CASE (2:3)
             X3=''
             Y3=''
             Z3=''
           CASE (1)
             X4=''
             Y4=''
             Z4=''
           END SELECT
           SELECT CASE(I)
           CASE (10,9,8,7,6)
             REWIND (I+15)
             READ(I+15,*) X1,Y1,Z1
             DO I1A=-10,10
             DO I2A=-10,10
                IF (X1(I1A,I2A).NE.'11') PRINT *,'FAIL'
                IF (Y1(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (Z1(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X1(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y1(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z1(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
             READ (I+15,*)X1(:,:),Y1(:,:),Z1(:,:)
             DO I1A=-10,10
             DO I2A=-10,10
                IF (X1(I1A,I2A).NE.'11') PRINT *,'FAIL'
                IF (Y1(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (Z1(I1A,I2A).NE.'1') PRINT *,'FAIL'
             ENDDO
             ENDDO
           CASE (5,4)
             REWIND (I+15)
             READ(I+15,*) X2,Y2,Z2
             DO I1A=-5 , 5
             DO I2A=-5 , 5
                IF (X2(I1A,I2A).NE.'11') PRINT *,'FAIL'
                IF (Y2(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (Z2(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X2(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y2(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z2(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
             READ (I+15,*)X2(:,:),Y2(:,:),Z2(:,:)
             DO I1A=-5 , 5
             DO I2A=-5 , 5
                IF (X2(I1A,I2A).NE.'11') PRINT *,'FAIL'
                IF (Y2(I1A,I2A).NE.'1') PRINT *,'FAIL'
                IF (Z2(I1A,I2A).NE.'1') PRINT *,'FAIL'
             ENDDO
             ENDDO
           CASE (3,2)
             REWIND (I+15)
             READ(I+15,*) X3,Y3,Z3
             DO I1A=-3 , 3
             DO I2A=-3 , 3
                IF (X3(I1A,I2A).NE.'22') PRINT *,'FAIL'
                IF (Y3(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (Z3(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X3(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y3(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z3(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
             READ (I+15,*)X3(:,:),Y3(:,:),Z3(:,:)
             DO I1A=-3 , 3
             DO I2A=-3 , 3
                IF (X3(I1A,I2A).NE.'22') PRINT *,'FAIL'
                IF (Y3(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (Z3(I1A,I2A).NE.'2') PRINT *,'FAIL'
             ENDDO
             ENDDO
           CASE (1)
             REWIND (I+15)
             READ(I+15,*) X4,Y4,Z4
             DO I1A=-1 , 1
             DO I2A=-1 , 1
                IF (X4(I1A,I2A).NE.'22') PRINT *,'FAIL'
                IF (Y4(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (Z4(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (A(I1A,I2A).NE.X4(I1A,I2A))PRINT *,'FAIL'
                IF (B(I1A,I2A).NE.Y4(I1A,I2A))PRINT *,'FAIL'
                IF (C(I1A,I2A).NE.Z4(I1A,I2A))PRINT *,'FAIL'
             ENDDO
             ENDDO
             READ (I+15,*)X4(:,:),Y4(:,:),Z4(:,:)
             DO I1A=-1 ,1
             DO I2A=-1 ,1
                IF (X4(I1A,I2A).NE.'22') PRINT *,'FAIL'
                IF (Y4(I1A,I2A).NE.'2') PRINT *,'FAIL'
                IF (Z4(I1A,I2A).NE.'2') PRINT *,'FAIL'
             ENDDO
             ENDDO
           ENDSELECT
           SELECT CASE(I)
           CASE (6)
             DEALLOCATE (A,B,C)
           CASE DEFAULT
           END SELECT
           CALL SG(A,B,C,I)
        ENDDO
        END subroutine
        SUBROUTINE SX(A,L,M)
        CHARACTER*(*),DIMENSION(L:M,L:M)::A
        CHARACTER*4 R1
        SELECT CASE(L)
        CASE (-10,-5)
          R1='1111'
        CASE (- 3,-1)
          R1='2222'
        END SELECT
        DO IXL01=L,M
        DO IXL02=L,M
           IF (A(IXL01,IXL02).NE.R1) PRINT *,'FAIL'
        ENDDO
        ENDDO
        END subroutine
      END
