      SUBROUTINE SUB01
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+1.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB02
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+2.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB03
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,9
      DO 10 J=1,9
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+3.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB04
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,9
      DO 10 J=1,9
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+5.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB05
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+7.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB06(N)
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,N
      DO 10 L=1,6
      DO 10 K=1,4
      DO 10 J=1,N
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)/3.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB07
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)/5.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB08
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)/7.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB09
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)-.3
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB10(N,B,C)
      COMMON A
      REAL A(10,10,10,10,10)
      REAL B(10,10,10,10,10)
      REAL C(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(N,N,N,N,N)=N
       A(N,N,N,N,N)=A(N,N,N,N,N)-.5
       B(I,J,K,L,1)=B(I,J,K,L,10)/3.
       C(I,J,K,L,M)=C(I,J,K,L,M)/7.
   10 CONTINUE
      WRITE(6,*) (A(N,10,10,10,10),N=1,10)
      WRITE(6,*) (B(N,10,10,10,1) ,N=1,10)
      WRITE(6,*) (C(N,1,1,1,1)    ,N=1,10)
      RETURN
      END

      SUBROUTINE SUB11(N,B,C)
      COMMON A
      REAL A(10,10,10,10,10)
      REAL B(10,10,10,10,10)
      REAL C(10,10,10,10,10)
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(N,N,N,N,N)=N
       A(N,N,N,N,N)=A(N,N,N,N,N)-.7
       B(I,J,K,L,1)=B(I,J,K,L,10)+.3
       C(I,J,K,L,M)=C(I,J,K,L,M)+.7
   10 CONTINUE
      WRITE(6,*) (A(N,10,10,10,10),N=1,10)
      WRITE(6,*) (B(N,10,10,10,1) ,N=1,10)
      WRITE(6,*) (C(N,1,1,1,1)    ,N=1,10)
      RETURN
      END

      PROGRAM MAIN
      COMMON A
      REAL A(100000)
      REAL B(100000)
      REAL C(100000)
      DO 10 I=1,100000
       A(I)=I**(1./4.)
       B(I)=I**(1./3.)
       C(I)=I**(1./2.)
   10 CONTINUE
      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      idn=10
      CALL SUB06(idn)
      CALL SUB07
      CALL SUB08
      CALL SUB09
      idn=10
      CALL SUB10(idn,B,C)
      idn=10
      CALL SUB11(idn,B,C)
      WRITE(6,*) '(A)'
      WRITE(6,*) (A(I),I=1,100000,990)
      WRITE(6,*) '(B)'
      WRITE(1,*) (B(I),I=1,100000,990)
      REWIND 1
      CALL CHK
      WRITE(6,*) '(C)'
      WRITE(6,*) (C(I),I=1,100000,990)
      END
      SUBROUTINE CHK
      character*(*),parameter::m=
     x'45.1142197 45.2779350 45.4404716 45.6018448 45.7620735 '//
     x'45.9211845 '//
     x'46.0791931 46.2361145 46.3919754 46.5467873 46.7005692 '//
     x'22.1660995 '//
     x'22.8183575 23.4353161 24.0213947 24.5801926 25.1146755 '//
     x'25.6273289 '//
     x'26.1202545 26.5952454 27.0538502 27.4974136 27.9271088 '//
     x'28.3439751 '//
     x'28.7489262 29.1427784 29.5262642 29.9000416 30.2646980 '//
     x'30.6207733 '//
     x'30.9687538 31.3090858 31.6421757 31.9683971 32.2880936 '//
     x'32.6015778 '//
     x'32.9091492 33.2110786 33.5076141 33.7989922 34.0854301 '//
     x'34.3671341 '//
     x'34.6442909 34.9170876 35.1856842 35.4502411 35.7109070 '//
     x'35.9678230 '//
     x'36.2211227 36.4709244 36.7173538 36.9605179 37.2005234 '//
     x'37.4374695 '//
     x'37.6714554 37.9025726 38.1309013 38.3565292 38.5795326 '//
     x'38.7999878 '//
     x'39.0179672 39.2335358 39.4467621 39.6577072 39.8664322 '//
     x'40.0729942 '//
     x'40.2774506 40.4798508 40.6802444 40.8786850 41.0752182 '//
     x'41.2698860 '//
     x'41.4627380 41.6538086 41.8431473 42.0307846 42.2167587 '//
     x'42.4011116 '//
     x'42.5838776 42.7650833 42.9447708 43.1229630 43.2996979 '//
     x'43.4749985 '//
     x'43.6488991 43.8214226 43.9925995 44.1624565 44.3310127 '//
     x'44.4983025 '//
     x'44.6643372 44.8291512 44.9927597 45.1551895 45.3164558 '//
     x'45.4765854 '//
     x'45.6355934 45.7935028 45.9503288 46.1060944 46.2608109 '//
     x'46.4145012'
      REAL RESULT(102)
      REAL MASTER(102)
      DATA MASTER/
     x45.1142197,45.2779350,45.4404716,45.6018448,45.7620735,45.9211845,
     x46.0791931,
     x46.2361145,46.3919754,46.5467873,46.7005692,22.1660995,22.8183575,
     x23.4353161,
     x24.0213947,24.5801926,25.1146755,25.6273289,26.1202545,26.5952454,
     x27.0538502,
     x27.4974136,27.9271088,28.3439751,28.7489262,29.1427784,29.5262661,
     x29.9000416,
     x30.2646980,30.6207733,30.9687538,31.3090858,31.6421757,31.9683971,
     x32.2880936,
     x32.6015778,32.9091492,33.2110786,33.5076141,33.7989922,34.0854301,
     x34.3671341,
     x34.6442909,34.9170876,35.1856842,35.4502411,35.7109070,35.9678230,
     x36.2211227,
     x36.4709244,36.7173538,36.9605179,37.2005234,37.4374695,37.6714554,
     x37.9025726,
     x38.1309013,38.3565292,38.5795326,38.7999878,39.0179672,39.2335358,
     x39.4467621,
     x39.6577072,39.8664322,40.0729942,40.2774506,40.4798508,40.6802444,
     x40.8786850,
     x41.0752182,41.2698860,41.4627380,41.6538086,41.8431473,42.0307846,
     x42.2167587,
     x42.4011116,42.5838776,42.7650833,42.9447708,43.1229630,43.2996979,
     x43.4749985,
     x43.6488991,43.8214226,43.9925995,44.1624565,44.3310127,44.4983025,
     x44.6643372,
     x44.8291512,44.9927597,45.1551895,45.3164558,45.4765854,45.6355934,
     x45.7935028,
     x45.9503288,46.1060944,46.2608109,46.4145012/
      READ(1,*) RESULT
      IE=0
      DO 10 I=1,102
        IF (ABS(MASTER(I)-RESULT(I))>0.00001) THEN
                                PRINT *,'ERROR',I,MASTER(I),RESULT(I)
           IE=IE+1
        ENDIF
10    CONTINUE
      IF (IE.EQ.0)THEN
        WRITE(6,*) m
      ENDIF
      END
      
