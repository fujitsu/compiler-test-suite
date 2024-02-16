      INTEGER I,J,IC1,IC2,JC
      REAL R,RI
      DOUBLEPRECISION D
      IC1=0
      IC2=1
      JC=2
      DO 10 I=0,10
         IC1=IC1+1
         IF(I.gt.3)then
            DO 20 J=0,10
               JC=JC+1
 20         continue
            EXIT
         ENDIF
         IC2=IC2+1
 10   continue

      DO 30 R=0.0,10.0
         IC1=IC1+1
         IF(R.gt.4.0)then
            DO 40 J=0,10
               JC=JC+1
 40         continue
            EXIT
         ENDIF
         IC2=IC2+1
 30   continue

      DO 50 D=0.0,10.0
         IC1=IC1+1
         IF(D.gt.5.0)then
            DO 60 J=0,10
               JC=JC+1
 60         continue
            EXIT
         ENDIF
         IC2=IC2+1
 50   continue

      DO 70 I=0,10
         IC1=IC1+1
         IF(I.gt.5)then
            DO 80 R=0.0,10.0
               JC=JC+1
 80         continue
            EXIT
         ENDIF
         IC2=IC2+1
 70   continue

      DO 90 R=0.0,10.0
         IC1=IC1+1
         IF(R.gt.4.0)then
            DO 100 RI=0.0,10.0
               JC=JC+1
 100         continue
            EXIT
         ENDIF
         IC2=IC2+1
 90   continue

      DO 110 D=0.0,10.0
         IC1=IC1+1
         IF(D.gt.3.0)then
            DO 120 R=0.0,10.0
               JC=JC+1
 120         continue
            EXIT
         ENDIF
         IC2=IC2+1
 110   continue
       if((IC1.eq.36).and.(IC2.eq.31).and.(JC.eq.68))then
          print *,'ok'
       else
          print *,'ng'
       endif
       END
       
