      REAL*4 A41(100)
      DATA   A41/100*0.0/
      DO 10 I=1,1,1
        J=0
        DO 21 J=J+1,J+10,1
          A41(J)=J
21      CONTINUE
        J=J-1
        DO 22 J=J+1,J+10,1
          A41(J)=J
22      CONTINUE
        J=J-1
        DO 23 J=J+1,J+10,1
          A41(J)=J
23      CONTINUE
        J=J-1
        DO 24 J=J+1,J+10,1
          A41(J)=J
24      CONTINUE
        J=J-1
        DO 25 J=J+1,J+10,1
          A41(J)=J
25      CONTINUE
        J=J-1
        DO 26 J=J+1,J+10,1
          A41(J)=J
26      CONTINUE
        J=J-1
        DO 27 J=J+1,J+10,1
          A41(J)=J
27      CONTINUE
        J=J-1
        DO 28 J=J+1,J+10,1
          A41(J)=J
28      CONTINUE
        J=J-1
        DO 29 J=J+1,J+10,1
          A41(J)=J
29      CONTINUE
        J=J-1
        DO 30 J=J+1,J+10,1
          A41(J)=J
30      CONTINUE
10    CONTINUE

      PRINT *, '-- A41(01),A41(02),A41(03),........,A41(09),A41(10)  --'
      PRINT *,(A41(I),I=01,10)
      PRINT *, '-- A41(11),A41(12),A41(13),........,A41(19),A41(20)  --'
      PRINT *,(A41(I),I=11,20)
      PRINT *, '-- A41(21),A41(22),A41(23),........,A41(29),A41(30)  --'
      PRINT *,(A41(I),I=21,30)
      PRINT *, '-- A41(31),A41(32),A41(33),........,A41(39),A41(40)  --'
      PRINT *,(A41(I),I=31,40)
      PRINT *, '-- A41(41),A41(42),A41(43),........,A41(49),A41(50)  --'
      PRINT *,(A41(I),I=41,50)
      PRINT *, '-- A41(51),A41(52),A41(53),........,A41(59),A41(60)  --'
      PRINT *,(A41(I),I=51,60)
      PRINT *, '-- A41(61),A41(62),A41(63),........,A41(69),A41(70)  --'
      PRINT *,(A41(I),I=61,70)
      PRINT *, '-- A41(71),A41(72),A41(73),........,A41(79),A41(80)  --'
      PRINT *,(A41(I),I=71,80)
      PRINT *, '-- A41(81),A41(82),A41(83),........,A41(89),A41(90)  --'
      PRINT *,(A41(I),I=81,90)
      PRINT *, '-- A41(91),A41(92),A41(93),........,A41(99),A41(100) --'
      PRINT *,(A41(I),I=91,100)
      STOP
      END
