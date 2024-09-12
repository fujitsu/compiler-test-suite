         INTEGER*4 SCR1A(100),SCR1B(100),SCR1C(100),SCR1D(100)
         DATA SCR1B/100*2/,SCR1C/100*3/,SCR1D/100*4/

           DO 20 I=1,10
             SCR1B(I)=(SCR1C(I)**SCR1D(10))
             SCR1D(I)=SCR1B(I)
20           CONTINUE

         WRITE(6,*) SCR1B,SCR1D
         STOP
         END
