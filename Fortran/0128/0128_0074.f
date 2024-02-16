      INTEGER ANS(5)
      COMMON ANS
      CALL SUB(0)
      if(ANS(1).eq.0)then
         if(ANS(2).eq.0)then
            if(ANS(3).eq.0)then
               if(ANS(4).eq.0)then
                  if(ANS(5).eq.0)then
                     print *,'ok'
                  endif
               endif
            endif
         endif
      endif
      CALL SUB(1)
      if(ANS(1).eq.0)then
         if(ANS(2).eq.11)then
            if(ANS(3).eq.1)then
               if(ANS(4).eq.0)then
                  if(ANS(5).eq.11)then
                     print *,'ok'
                  endif
               endif
            endif
         endif
      endif
      END
      
      SUBROUTINE SUB(L)
      INTEGER I,IC1,IC2,JC,J,L,ANS(6)
      COMMON ANS
      IC1=0
      IC2=0
      JC=0
      I=0
      J=0
      IF(L.eq.0)THEN
         GOTO 30
      ELSE
         DO 10 I=0,10
            IC1=IC1+1
            IF(I.lt.3)then
               DO 20 J=0,10
                  JC=JC+1
 20            continue
               EXIT
            ENDIF
            IC2=IC2+1
 10      continue
      ENDIF
 30   continue
      ANS(1)=I
      ANS(2)=J
      ANS(3)=IC1
      ANS(4)=IC2
      ANS(5)=JC
      RETURN
      END
