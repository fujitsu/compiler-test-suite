      PROGRAM MAIN
      REAL    * 8  DA1(256),DA2(256),DA3(256),DS1
      LOGICAL * 4  LA1(256),LA2(256),LA3(256)
      DO 10 I=1,256
        LA1(I)=MOD(I,3).EQ.0
        LA2(I)=.NOT.LA1(I)
        LA3(I)=LA1(I).AND.(I.LE.100)
        DA1(I)=I
        DA2(I)=(DA1(I)-3.)**2-12.5
        DA3(I)=DA2(I)-DA1(I)*0.5
  10  CONTINUE
      DO 20 I=1,255

        IF(DA2(I))  22,22,21
  21      DS1   =DA1(I)+DA2(I)/3.+I
          DA1(I)=LOG(DS1)
          GOTO 25
  22      DA1(I)=LOG(DA1(I))

          IF(LA1(I)) THEN
            DA3(I)=DA1(I)+DA3(I)

            IF(.NOT.LA2(I).AND.I.GT.5) THEN
              DA3(I)=1.0
            ELSE
              DA3(I)=DA3(I)-2.
            ENDIF
          ELSE
            DA3(I)=-DA3(I)
          ENDIF
          IF(LA3(I)) GOTO 20
  25    DA2(I)=LOG(I/2.5)
  20  CONTINUE

      WRITE(6,600) DA1
      WRITE(6,600) DA2
      WRITE(6,600) DA3
 600  FORMAT(1H ,52(5(D15.8,1X)/) )
      END
