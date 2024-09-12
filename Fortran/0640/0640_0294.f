      PROGRAM MAIN

      LOGICAL*4 L10(10),L11(10),L12(10),L13(10),L14(10),L15(10),
     1          L16(10),L17(10),L18(10),L19(10),L20(10),L21(10),
     2          L22(10),L23(10),L24(10)
      LOGICAL*4 L11V,L12V
      REAL*4    R10(10),R11(10)
      COMPLEX*8 C10(10),C11(10)
      DATA  L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  R10/5.7E01,5.8E01,5.9E01,5.7E01,5.8E01,5.8E01,5.9E01,
     1          5.8E01,5.9E01,5.7E01/
      DATA  R11/5.5E01,5.8E01,5.9E01,5.6E01,5.7E01,5.8E01,5.9E01,
     1          5.5E01,0.0E01,5.7E01/
      DATA  C10/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
     1          (9,9),(10,10)/
      DATA  C11/(1.5,2),(2,2),(3.5,4),(4.5,5),(5,5),(6,6),(7.5,8),
     1          (8.5,9),(9.5,10),(10,10)/

      LOGICAL*4 L30(10),L31(10),L32(10),L33(10)
      INTEGER*4 I30(10)
      REAL*8    RD30(10),RD31(10),RD32(10)
      COMPLEX*16 CD30(10)
      DATA  RD30/10,20,30,40,50,60,70,80,90,100/
      DATA  RD31/ 2, 3, 6, 4,10, 3,12,10,14, 10/
      DATA  CD30/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
     1           (9,9),(10,10)/
      DATA  RD32/2,0,3,0,4,0,5,0,6,0/
      DATA  N/10/
      DO 10 I=1,N
        L11V = L10(I)
        L12V = L11V
        L11(I) = .TRUE.
        L12(I) = L11V
        L13(I) = L12(I)
        L14(I) = .TRUE. .AND. L11V
        L15(I) =  L11V  .OR. .FALSE.
        L16(I) = .TRUE. .EQV. L13(I)
        L17(I) =  L12(I).NEQV. L16(I)
        L18(I) = .NOT.L16(I) .AND. .NOT.L17(I)
        L19(I) = L11V .OR. .NOT.L12V
        L20(I) = 6.0E01 .GT. 5.9E01
        L21(I) = 6.1E01 .GE. R10(I)
        L22(I) = R10(I) .NE. 5.8E01
        L23(I) = R10(I) .EQ. R11(I)
        L24(I) =(C10(I)* (1.,1.)).EQ.(C11(I)-(0.5,1))
   10 CONTINUE
      WRITE(6,*)        L11
      WRITE(6,*)        L12
      WRITE(6,*)        L13
      WRITE(6,*)        L14
      WRITE(6,*)        L15
      WRITE(6,*)        L16
      WRITE(6,*)        L17
      WRITE(6,*)        L18
      WRITE(6,*)        L19
      WRITE(6,*)        L20
      DO 20 I=1,N
        L30(I) = 5.0D01 .LT. RD30(I)/RD31(I)
        I30(I) = I
        L31(I) = .TRUE.
        L32(I) = CD30(I) .EQ. (1.0,2.0)*RD32(I)
        L33(I) = L31(I) .AND. L32(I)
   20 CONTINUE
      WRITE(6,*) L30,I30
      WRITE(6,*) L31
      WRITE(6,*) L32
      WRITE(6,*) L33
      STOP
      END
