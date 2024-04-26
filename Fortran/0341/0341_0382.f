      call sub()
      end
      SUBROUTINE SUB
      PARAMETER (NJA=128, NJB=128, JL=1, JU=128, KL=1, KU=128)
      COMMON /ARRAYS/ Y(NJA,NJB)
      DO 3 J = JL+2,JU-2
        DO 11 K = KL,KU
          Y(J,K) = j
11      CONTINUE
3     CONTINUE
      if(y(3,1).ne.3) then
 	print *,"***** NG *****"
      endif
      if(y(3,128).ne.3) then
 	print *,"***** NG *****"
      endif
      if(y(126,128).ne.126) then
 	print *,"***** NG *****"
      endif
      if(y(126,1).ne.126) then
 	print *,"***** NG *****"
      endif
      if(y(22,22).ne.22) then
 	print *,"***** NG *****"
      endif
      if(y(9,5).ne.9) then
 	print *,"***** NG *****"
      endif
      if(y(5,9).ne.5) then
 	print *,"***** NG *****"
      endif
      if(y(34,43).ne.34) then
 	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      RETURN
      END
