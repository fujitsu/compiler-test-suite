      PROGRAM MAIN

      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      CALL SUB07
      CALL SUB08
      CALL SUB09
      CALL SUB10
      CALL SUB11
      CALL SUB12
      CALL SUB13
      CALL SUB14
      CALL SUB15
      END

      SUBROUTINE SUB01
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB02
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB03
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB04
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB05
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
       S(K)=S(K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB06
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB07
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB08
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
       S(K)=S(K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB09
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB10
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
       S(K)=S(K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB11
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
       S(K)=S(K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB12
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB13
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
       S(K)=S(K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB14
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
   20 CONTINUE
       S(K)=S(K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
      SUBROUTINE SUB15
      REAL A(10,10,10)/1000*1./,S(10)/10*5./
      DO 10 K=1,9
       S(K)=S(K)+1.
      DO 20 J=1,9
       S(K)=S(K)+1.
      DO 30 I=1,9
       A(I,J,K)=A(I,J,K)+2.
   30 CONTINUE
       S(K)=S(K)+1.
   20 CONTINUE
   10 CONTINUE
      WRITE(6,*) A(1,1,1),S(1)
      RETURN
      END
