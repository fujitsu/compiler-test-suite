      INTEGER ANS(8)
      COMMON ANS
      CALL SUB(0,0)
      if(ANS(1).eq.11)then
         if(ANS(2).eq.11)then
            if(ANS(3).eq.11)then
               if(ANS(4).eq.0)then
                  if(ANS(5).eq.0)then
                     if(ANS(6).eq.0)then
                        if(ANS(7).eq.0)then
                           if(ANS(8).eq.0)then
                              print *,'ok'
                           endif
                        endif
                     endif
                  endif
               endif
            endif
         endif
      endif
      CALL SUB(0,1)
      if(ANS(1).eq.11)then
         if(ANS(2).eq.11)then
            if(ANS(3).eq.11)then
               if(ANS(4).eq.0)then
                  if(ANS(5).eq.0)then
                     if(ANS(6).eq.0)then
                        if(ANS(7).eq.0)then
                           if(ANS(8).eq.1)then
                              print *,'ok'
                           endif
                        endif
                     endif
                  endif
               endif
            endif
         endif
      endif
      CALL SUB(1,0)

      if(ANS(1).eq.0)then
         if(ANS(2).eq.1)then
            if(ANS(3).eq.0)then
               if(ANS(4).eq.1)then
                  if(ANS(5).eq.1)then
                     if(ANS(6).eq.0)then
                        if(ANS(7).eq.1)then
                           if(ANS(8).eq.0)then
                              print *,'ok'
                           endif
                        endif
                     endif
                  endif
               endif
            endif
         endif
      endif
      CALL SUB(1,1)
      if(ANS(1).eq.0)then
         if(ANS(2).eq.1)then
            if(ANS(3).eq.0)then
               if(ANS(4).eq.1)then
                  if(ANS(5).eq.0)then
                     if(ANS(6).eq.1)then
                        if(ANS(7).eq.1)then
                           if(ANS(8).eq.1)then
                              print *,'ok'
                           endif
                        endif
                     endif
                  endif
               endif
            endif
         endif
      endif
      END
      SUBROUTINE SUB(L,M)
      INTEGER I,IC0,IC1,IC2,IC3,IC4,L,M,ANS(8)
      COMMON ANS
      IC0=0
      IC1=0
      IC2=0
      IC3=0
      IC4=0
      DO 10 I=0,10
         IC0=IC0+1
         IF(L.eq.0)THEN
            IC1=IC1+1
            GOTO 10
         ENDIF
         IC2=IC2+1
         IF(M.eq.0)THEN
            IC3=IC3+1
            GOTO 20
         ENDIF
         IC4=IC4+1
         GOTO 30
 10   continue
 20   continue
 30   continue
      ANS(1)=I
      ANS(2)=IC0
      ANS(3)=IC1
      ANS(4)=IC2
      ANS(5)=IC3
      ANS(6)=IC4
      ANS(7)=L
      ANS(8)=M
      RETURN
      END
