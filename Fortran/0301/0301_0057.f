      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      COMMON   /BLK3/  CD10(20,20),CD20(20,20),CD30(20,20)
      COMMON   /BLK4/  LD10(20),LD20(20,20),LD30(20,20)
      COMMON   /IND/   IP
      COMMON   /DOP/   JHALF

      DO 10 I=2,20
        IP = 21-I
        DO 20 J=JHALF,20
          LD20(IP,J) = .NOT.LD30(I,J)
          LD30(IP,J) = .NOT.LD20(J,IP)
          CD10(I,J) = CD10(J,I) + DCMPLX(0.5D0,0.2D0)
          CD20(J,I) = CD30(I,J) + DCMPLX(0.5D0,0.4D0)
          CD30(IP,J) = CD20(1,J) + DCMPLX(0.4D0,0.2D0)
 20     CONTINUE
 10   CONTINUE

      WRITE(6,*) LD30(17,17)
      STOP
      END

      BLOCK DATA   INIT
      IMPLICIT   REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      COMMON  /BLK3/  CD10(20,20),CD20(20,20),CD30(20,20)
      COMMON  /BLK4/  LD10(20),LD20(20,20),LD30(20,20)
      COMMON  /IND/   IP
      COMMON  /DOP/   JHALF
      DATA   CD10,CD20/400*(2.D0,4.D0),400*(6.D0,3.D0)/
      DATA   CD30/200*(1.D0,5.D0),200*(2.D0,3.D0)/
      DATA   LD10,LD20,LD30/820*.FALSE./
      DATA   JHALF/10/
      END
