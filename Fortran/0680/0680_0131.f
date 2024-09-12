       PROGRAM MAIN
      REAL * 8 SS   ,B(11),C(11),D(11)
      COMMON /COM1/SS,B,C,D
      DATA N/10/

      CALL INIT
      DO 1 I=1,N+1
        SS  =SS    *B(I)+C(I)
1     CONTINUE
      WRITE(6,*) ' NO.1 ',SS,B,C,D

      CALL INIT
      DO 2 I=1,N+1
        D(I)=SS
        SS  =SS    *B(I)+C(I)
2     CONTINUE
      WRITE(6,*) ' NO.2 ',SS,B,C,D

      CALL INIT
      DO 3 I=1,N+1
        B(I)=SS
        SS  =SS    *B(I)+C(I)
3     CONTINUE
      WRITE(6,*) ' NO.3 ',SS,B,C,D

      CALL INIT
      DO 4  I=1,N+1
        SS  =D(I)
        SS  =SS    *B(I)+C(I)
4     CONTINUE
      WRITE(6,*) ' NO.4 ',SS,B,C,D

      CALL INIT
      DO 5  I=1,N+1
        SS  =B(I)
        SS  =SS    *B(I)+C(I)
5     CONTINUE
      WRITE(6,*) ' NO.5 ',SS,B,C,D

      CALL INIT
      DO 6  I=1,N+1
        SS  =SS    *B(I)+C(I)
        D(I)=SS
 6    CONTINUE
      WRITE(6,*) ' NO.6 ',SS,B,C,D

      CALL INIT
      DO 7 I=1,N+1
        SS  =SS    *B(I)+C(I)
        B(I)=SS
7     CONTINUE
      WRITE(6,*) ' NO. 7 ',SS,B,C,D

      CALL INIT
      DO 8 I=1,N+1
        SS  =SS    *B(I)+C(I)
        SS  =D(I)
8     CONTINUE
      WRITE(6,*) ' NO.8 ',SS,B,C,D

      CALL INIT
      DO 9 I=1,N+1
        SS  =SS    *B(I)+C(I)
        SS  =B(I)
9     CONTINUE
      WRITE(6,*) ' NO.9 ',SS,B,C,D

      STOP
      END

      SUBROUTINE INIT
      REAL * 8 SS   ,B(11),C(11),D(11)
      COMMON /COM1/SS,B,C,D
      DATA N/10/

      SS   =.22
      DO 1 I=1,N+1
       B(I)=.5
       C(I)=.12
       D(I)=.12
 1    CONTINUE
      RETURN
      END
