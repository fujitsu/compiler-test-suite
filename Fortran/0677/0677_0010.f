      INTEGER *4 A(1024)
      DATA A/1024*0/
      J32=0
      J64=0
      J128=0
      J256=0
      J512=0
      J1024=0

      DO 10 I=1,32
        J32 = J32 + 1
        A(I)=A(I)+1
  10  CONTINUE

      DO 20 I=1,64
        A(I)=A(I)+1
        J64 = J64 + 1
  20  CONTINUE

      DO 30 I=1,128
        J128= J128+ 1
        A(I)=A(I)+1
  30  CONTINUE

      DO 40 I=1,256
        J256= J256+ 1
        A(I)=A(I)+1
  40  CONTINUE

      DO 50 I=1,512
        J512= J512+ 1
        A(I)=A(I)+1
  50  CONTINUE

      DO 60 I=1,1024
        J1024=J1024+1
        A(I)=A(I)+1
  60  CONTINUE

      WRITE(6,*) J32,J64,J128,J256,J512,J1024,A
      STOP
      END
