      real x(10,10)
      l=1
      m=10
      n=10
      DO    290    i = l,10
      DO    290    j = l,10
      X(I,J) = i
  290 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      END
