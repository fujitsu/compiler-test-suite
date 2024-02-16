      CALL SUB(0)
      END
      SUBROUTINE SUB(L)
      INTEGER I,IC1,IC2,JC,L,A(1,2,3),B(1,2,3)
      I=0
      IC1=0
      IC2=0
      JC=0
      A(1:1,1:2,1:3)=0
      B(1:1,1:2,1:3)=0
      DO 10 I=0,10
         IC1=IC1+1
         IF(L.eq.1)GOTO 100
         A(1:1,1:2,1:3)=5
         EXIT
 100     continue
         IC2=IC2+1
 10   continue

      DO 20 I=0,10
         IC1=IC1+1
         IF(L.eq.0)GOTO 200
         B(1:1,1:2,1:3)=5
         EXIT
 200     continue
         IC2=IC2+1
 20   continue

      if(L.eq.0)then
         DO 30 I=1,1
            DO 40 J=1,2
               DO 50 K=1,3
                  if(A(I,J,K).ne.5)then
                     print *,'ng'
                  endif
 50            continue
 40         continue
 30      continue
      else
         DO 60 I=1,1
            DO 70 J=1,2
               DO 80 K=1,3
                  if(A(I,J,K).ne.0)then
                     print *,'ng'
                  endif
 80            continue
 70         continue
 60      continue
      endif
      print *,'ok'
      RETURN
      END
