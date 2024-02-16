      call sub()
      end
      subroutine sub()
      implicit integer(o)
      real a(10,10)
      real b(10)
      equivalence (l,m)
      equivalence (n,o)
      l=1
      n=10
      a=1
      b=1
      do 10 k=1,10,10
      do 10 i=1,10,2
	do 10 j=l,10,3
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
c
c
      a=1
      do 20 k=1,10,10
      do 20 i=m,10,2
	do 20 j=l,10,3
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
c
c
      a=1
      do 30 k=1,10,10
      do 30 i=m,10,2
	do 30 j=l,n,3
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
c
c
      a=1
      do 40 k=1,10,10
      do 40 i=m,n,2
	do 40 j=l,o,3
	  a(i,j) = a(i,j) + i+j
40    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG-1 *****"
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
