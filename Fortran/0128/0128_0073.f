      INTEGER I,IC1,IC2,JC,J
      IC1=0
      IC2=0
      JC=0
      DO 10 I=0,10
         IC1=IC1+1
         IF(I.lt.3)then
            DO 20 J=0,10
               JC=JC+1
 20         continue
            EXIT
         ENDIF
         IC2=IC2+1
 10   continue
      if(I.eq.0)then
         if(J.eq.11)then
            if(IC1.eq.1)then
               if(IC2.eq.0)then
                  if(JC.eq.11)then
                     print *,'ok'
                  else
                     print *,'ng'
                  endif
               else
                  print *,'ng'
               endif
            else
               print *,'ng'
            endif
         else
            print *,'ng'
         endif
      else
         print *,'ng'
      endif
      
      END
