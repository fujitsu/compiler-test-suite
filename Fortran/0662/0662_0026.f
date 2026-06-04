       PARAMETER (J=2)
       CHARACTER*(J) B1(4,4,4),B2(2,2,2),B4(J,J,J)
       CHARACTER*(J),DIMENSION(:,:,:),pointer    ::B3
       OPEN(1,DELIM='APOSTROPHE')
       I1=1
       I2=2
       I3=3
       ALLOCATE (B3(J,J,J))
       B1='AB'
       B2=B1(2:4:2,2:4:2,2:4:2)
       B3=B2
       B4=B3
       CALL  S1(B1(2 : 4:2,2 :4 :2 ,2 :4 :2 ),B2,B3,B4,J,'AB')
       CALL  S1(B1(I1:I3:2,I1:I3:I2,I1:I3:I2),B2,B3,B4,J,'AB')
       CALL  S2(B1,'AB')
       DEALLOCATE (B3)
       PRINT *,'PASS'
       CONTAINS
       SUBROUTINE S1(A1,A2,A3,A4,I,X)
       CHARACTER*(*) A1(:,:,:),A2(2,2,2),A4(I,I,I),A5(I,I,I)*(I)
       CHARACTER*(*),DIMENSION(:,:,:),pointer    ::A3
       CHARACTER*(*) X
       CHARACTER*2   Z(2*2*2*2*2*5)
       A5=A3
       M1=1
       M2=2
       M3=3
       IF (LEN(A1).NE.2) PRINT *,'FAIL'
       IF (LEN(A2).NE.2) PRINT *,'FAIL'
       IF (LEN(A3).NE.2) PRINT *,'FAIL'
       IF (LEN(A4).NE.2) PRINT *,'FAIL'
       IF (LEN(A5).NE.2) PRINT *,'FAIL'
       IF (LEN( X).NE.2) PRINT *,'FAIL'
       DO 1 I001=1,I
       DO 1 I002=1,I
       DO 1 I003=1,I
         IF (A1(I001,I002,I003).NE.X) PRINT *,'FAIL'
         IF (A2(I001,I002,I003).NE.X) PRINT *,'FAIL'
         IF (A3(I001,I002,I003).NE.X) PRINT *,'FAIL'
         IF (A4(I001,I002,I003).NE.X) PRINT *,'FAIL'
         IF (A5(I001,I002,I003).NE.X) PRINT *,'FAIL'
   1   CONTINUE
       WRITE(1,*) A1
       WRITE(1,*) A2
       WRITE(1,*) A3
       WRITE(1,*) A4
       WRITE(1,*) A5
       CALL CHK(Z)
       WRITE(1,*) A1(:,:,:)
       WRITE(1,*) A2(:,:,:)
       WRITE(1,*) A3(:,:,:)
       WRITE(1,*) A4(:,:,:)
       WRITE(1,*) A5(:,:,:)
       CALL CHK(Z)
       WRITE(1,*) A1(1:2,1:2,1:2)
       WRITE(1,*) A2(1:2,1:2,1:2)
       WRITE(1,*) A3(1:2,1:2,1:2)
       WRITE(1,*) A4(1:2,1:2,1:2)
       WRITE(1,*) A5(1:2,1:2,1:2)
       CALL CHK(Z)
       WRITE(1,*) (A1(I1:I2:I1,I1:I2,LM),LM=1,2)
       WRITE(1,*) (A2(I1:I2:I1,I1:I2,LM),LM=1,2)
       WRITE(1,*) (A3(I1:I2:I1,I1:I2,LM),LM=1,2)
       WRITE(1,*) (A4(I1:I2:I1,I1:I2,LM),LM=1,2)
       WRITE(1,*) (A5(I1:I2:I1,I1:I2,LM),LM=1,2)
       CALL CHK(Z)
       WRITE(1,*) ((A1(KM,I1:I2,LM),LM=I1,I2),KM=I1,I2)
       WRITE(1,*) ((A2(KM,I1:I2,LM),LM=I1,I2),KM=I1,I2)
       WRITE(1,*) ((A3(KM,I1:I2,LM),LM=I1,I2),KM=I1,I2)
       WRITE(1,*) ((A4(KM,I1:I2,LM),LM=I1,I2),KM=I1,I2)
       WRITE(1,*) ((A5(KM,I1:I2,LM),LM=I1,I2),KM=I1,I2)
       CALL CHK(Z)
       WRITE(1,*) (((A1(KM,JM,LM),LM=I1,I2),KM=I1,I2),JM=I1,I2)
       WRITE(1,*) (((A2(KM,JM,LM),LM=I1,I2),KM=I1,I2),JM=I1,I2)
       WRITE(1,*) (((A3(KM,JM,LM),LM=I1,I2),KM=I1,I2),JM=I1,I2)
       WRITE(1,*) (((A4(KM,JM,LM),LM=I1,I2),KM=I1,I2),JM=I1,I2)
       WRITE(1,*) (((A5(KM,JM,LM),LM=I1,I2),KM=I1,I2),JM=I1,I2)
       CALL CHK(Z)
       END subroutine
       END
       SUBROUTINE CHK(Z)
       CHARACTER*(*) Z(40)
       REWIND 1
       READ(1,*) (Z(I),I= 1, 8)
       READ(1,*) (Z(I),I= 9,16)
       READ(1,*) (Z(I),I=17,24)
       READ(1,*) (Z(I),I=25,32)
       READ(1,*) (Z(I),I=33,40)
       DO 1 I=1,40
         IF (Z(I).NE.'AB') PRINT *,'FAIL'
         Z(I)='??'
    1  CONTINUE
       WRITE(1,'(A)') ' ',' ',' ',' ',' '
       REWIND 1
      END
      SUBROUTINE S2(B,BS)
      CHARACTER*(*) B(2,2,2),BP,BS*(*),XZ*100
      PARAMETER(BP='AB')
      I1=1
      I2=2
      WRITE(21,*,ERR=1)
     1 'AB','AB'(1:2),'AB'(I1:I2),BP,BP(1:2),BP(I1:I2),
     2 BS,BS(1:2),BS(I1:I2),'A'//'B',B(1,1,1),B(I1,I1,I1),
     3 B(I1,I1,I1)(:),B(I1,I1,I1)(I1:I2)
      REWIND 21
      READ (21,'(1X A)') XZ(1:28)
      IF (XZ(1:28).NE.'ABABABABABABABABABABABABABAB') PRINT *,'FAIL'
      XZ=''
      WRITE(22,*,ERR=1)
     1 'AB'//'AB','AB'(I1:I2)//'AB'(I1:I2),BS//BS,
     2 BS(I1:I2)//BS(I1:I2),B(I1,I1,I1)//B(I1,I1,I1),
     3 B(I1,I1,I1)(I1:I2)//B(I1,I1,I1)(1:2),
     4 B(I1,I1,I1)(:),B(I1,I1,I1)(I1:I2)
      REWIND 22
      READ (22,'(1X A)') XZ(1:28)
      IF (XZ(1:28).NE.'ABABABABABABABABABABABABABAB') PRINT *,'FAIL'
      XZ=''
      WRITE(23,*,ERR=1) B//B
      REWIND 23
      READ (23,'(1X A)') XZ(1:32)
      IF (XZ(1:28).NE.'ABABABABABABABABABABABABABAB') PRINT *,'FAIL'
      IF (XZ(29:32).NE.'ABAB') PRINT *,'FAIL'
      XZ=''
      RETURN
  1   PRINT *,'FAIL'
      END
