      SUBROUTINE ZNUMR(X,Y,R,NC,ICP)
      ENTRY ZNUMR3(X,Y,R,NC,ICP)
      RR=ABS(R)

      NCD=NC-1000*(NC/1000)
      IF(NCD.EQ.99) NCD=104

      NDEZ=NCD+1
      IF(NCD.GE.100) NDEZ=99-NCD

      IF(RR.GT.1.E-20) THEN
        RR=10.**IABS(NDEZ)
      ENDIF
      print *,rr
      end

      zau=1.0
      CALL ZNUMR(0.0,1.0,ZAU,3,0)
      end
