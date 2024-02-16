      real a(10,10)
      a=1
      do 10 i=1,10,2
	do 10 j=1+0,10+0,3+0
	  a(i,j) = a(i,j) + i+j
10    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      a=1
      do 20 i=1,10,2
	do 20 j=1+0,10+0,1+2
	  a(i,j) = a(i,j) + i+j
20    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      a=1
      do 30 i=1,10,2
	do 30 j=1+0,5+5,1+2
	  a(i,j) = a(i,j) + i+j
30    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      a=1
      c1=2
      c2=1
      c3=3
      do 40 i=1,10,2
	do 40 j=1,10,c3
	  a(i,j) = a(i,j) + i+j
40    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      end
