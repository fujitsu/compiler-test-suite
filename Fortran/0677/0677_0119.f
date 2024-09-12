            INTEGER*4 A(10)/10*1/,B(10)/1,2,3,4,5,6,7,8,9,10/
            IX=1
            IY=0
            DO 10 I=1,10
              IF(IX.GT.A(I)) THEN
                IX=A(I)
                IY=B(I)
              ENDIF
  10        CONTINUE
            WRITE(6,*) IX,IY,A,B
            STOP
            END
