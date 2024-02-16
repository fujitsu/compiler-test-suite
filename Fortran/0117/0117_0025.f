      real a(120,120), b(120,120) 
      do 10 i = 1,100
	do 10 j = 1,100
	  a(I+1,j) = j
10    continue
      if(a(2,1).ne.1) then
	print *,"***** NG *****"
      endif
      if(a(101,1).ne.1) then
	print *,"***** NG *****"
      endif
      if(a(2,100).ne.100) then
	print *,"***** NG *****"
      endif
      if(a(101,100).ne.100) then
	print *,"***** NG *****"
      endif
      if(a(33,33).ne.33) then
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      end
