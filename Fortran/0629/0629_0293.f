      integer*4 A41(100)
      DATA   A41/100*0/

        DO 21 J=1,10
          A41(J)=J
21      CONTINUE
        J=j-1
        DO 22 J=J+1,J+10
          A41(J)=J
22      CONTINUE

        write(6,*) j

      PRINT *,(A41(I),I=1,20)
      END
