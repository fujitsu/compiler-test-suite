      real x(10,10)
      l=1
      m=5
      n=6
      DO    290    i = l,m
      DO    290    j = l,n
      X(I,J) = i
  290 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(1,6).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(5,1).ne.5) then
	print *,"***** NG *****"
      endif
      if(x(5,6).ne.5) then
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      END
