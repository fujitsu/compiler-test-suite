       LOGICAL *  4 A(10),P(10),Q(10)
       INTEGER * 4 L(10)
       DATA L/2,1,4,3,6,5,8,7,10,9/
       DATA A/10*.TRUE./
       DATA P/.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,
     +        .TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE./
       DATA Q/10*.TRUE./

       DO 1 I=1,10
        IF (P(L(I)).AND.Q(L(I))) THEN
          P(L(I))=Q(L(I)).AND.A(I)
        ENDIF
1      CONTINUE
       
       WRITE(6,90) P
90     FORMAT(10L5)
       STOP
       END
