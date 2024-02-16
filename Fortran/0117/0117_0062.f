      x=1
      y=10
      m=1
      n=10
      call sub(x,y,m,n)
      end
      subroutine sub(x,y,m,n)
      real a(10,10)
      real b(10)
      a=1
      do 10 i=1,10
	do 10 j=x,10
	  a(i,j) = a(i,j)*a(i,j) +j
10    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 20 i=1,10
	do 20 j=m,10
	  a(i,j) = a(i,j)*a(i,j) +j
20    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 30 i=1,10
	do 30 j=1,y
	  a(i,j) = a(i,j)*a(i,j) +j
30    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 40 i=1,10
	do 40 j=1,n
	  a(i,j) = a(i,j)*a(i,j) +j
40    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 50 i=1,10
	do 50 j=x,y
	  a(i,j) = a(i,j)*a(i,j) +j
50    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 60 i=1,10
	do 60 j=x,n
	  a(i,j) = a(i,j)*a(i,j) +j
60    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 70 i=1,10
	do 70 j=m,y
	  a(i,j) = a(i,j)*a(i,j) +j
70    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 80 i=x,10
	do 80 j=m,10
	  a(i,j) = a(i,j)*a(i,j) +j
80    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 90 i=1,y
	do 90 j=1,n
	  a(i,j) = a(i,j)*a(i,j) +j
90    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 100 i=x,y
	do 100 j=m,n
	  a(i,j) = a(i,j)*a(i,j) +j
100    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 110 i=1,n,1
	do 110 j=1,y
	  a(i,j) = a(i,j)*a(i,j) +j
110    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 120 i=1,n
	do 120 j=x,10,1
	  a(i,j) = a(i,j)*a(i,j) +j
120    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 130 i=1,10,x
	do 130 j=1,10
	  a(i,j) = a(i,j)*a(i,j) +j
130    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 140 i=1,10
	do 140 j=1,10,x
	  a(i,j) = a(i,j)*a(i,j) +j
140    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 150 i=1,10,x
	do 150 j=x,10,m
	  a(i,j) = a(i,j)*a(i,j) +j
150    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 160 i=1,10,x
	do 160 j=x,y,m
	  a(i,j) = a(i,j)*a(i,j) +j
160    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
c
c
      a=1
      do 170 i=m,10,x
	do 170 j=x,y,m
	  a(i,j) = a(i,j)*a(i,j) +j
170    continue
c
      if(a(1,1).ne.2) then
	print *,a(1,1)
	print *,"***** NG *****"
      endif
      if(a(1,10).ne.11) then
	print *,a(1,10)
	print *,"***** NG *****"
      endif
      if(a(10,1).ne.2) then
	print *,a(10,1)
	print *,"***** NG *****"
      endif
      if(a(10,10).ne.11) then
	print *,a(10,10)
	print *,"***** NG *****"
      endif
      if(a(4,6).ne.7) then
	print *,a(4,6)
	print *,"***** NG *****"
      endif
      if(a(7,3).ne.4) then
	print *,a(7,3)
	print *,"***** NG *****"
      endif
      if(a(5,5).ne.6) then
	print *,a(5,5)
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      end
