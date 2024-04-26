         REAL*8 C(20)/20*0/
          LOGICAL L1(20)/20*.true./

          DO 10 J = 1 , 2
            M = J + 10
            DO 10 I = 1 , 20
               IF( L1(I) ) THEN
                 C(I) = i+M-i
               ENDIF
 10                CONTINUE
          write(6,*) c
          END
