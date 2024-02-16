      CALL SUB(0)
      END
      SUBROUTINE SUB(L)
      INTEGER I,IC1,IC2,JC,L,A(10,20,30),B(10,20,30)
      I=0
      IC1=0
      IC2=0
      JC=0
      A(1:10,1:20,1:30)=0
      B(1:10,1:20,1:30)=0
      DO 10 I=0,10
         IC1=IC1+1
         IF(L.eq.0)then
            A(1:10,1:20,1:30)=5
            EXIT
         ENDIF
         IC2=IC2+1
 10   continue

      DO 20 I=0,10
         IC1=IC1+1
         IF(L.eq.1)then
            B(1:10,1:20,1:30)=5
            EXIT
         ENDIF
         IC2=IC2+1
 20   continue

      if(L.eq.0)then
         DO 30 I=1,10
            DO 40 J=1,20
               DO 50 K=1,30
                  if(A(I,J,K).ne.5)then
                     print *,'ng'
                  endif
 50            continue
 40         continue
 30      continue
      else
         DO 60 I=1,10
            DO 70 J=1,20
               DO 80 K=1,30
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
