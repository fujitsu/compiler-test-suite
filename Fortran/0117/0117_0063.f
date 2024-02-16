      block data
      common /com1/ c,d,e,f,s,t
      data c,d,e,f,s,t/1,1,10,10,2,3/
      end
c
      x=2
      y=10
      m=3
      n=10
      call sub(x,y,m,n)
      end
      subroutine sub(x,y,m,n)
      common /com1/ c,d,e,f,s,t
      real a(10,10)
      real b(10)
      a=1
      b=1
      do 10 k=1,10,10
      do 10 i=1,10,x
	do 10 j=1,10,m
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
      print *,"***** OK-1 *****"
c
c
      a=1
      b(1)=2
      b(2)=3
      do 20 k=1,10,10
      do 20 i=1,10,b(1)
	do 20 j=1,10,b(2)
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
      do 30 i=1,10,s
	do 30 j=1,10,t
	  a(i,j) = a(i,j) + i+j
30    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG2 *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG3 *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG4 *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG5 *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG6 *****"
      endif
      print *,"***** OK7 *****"
c
c
      a=1
      do 40 k=1,10,10
      do 40 i=1,10,s
	do 40 j=d,10,t
	  a(i,j) = a(i,j) + i+j
40    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG2 *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG3 *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG4 *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG5 *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG6 *****"
      endif
      print *,"***** OK7 *****"
c
c
      a=1
      do 50 k=1,10,10
      do 50 i=c,10,s
	do 50 j=d,10,t
	  a(i,j) = a(i,j) + i+j
50    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG2 *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG3 *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG4 *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG5 *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG6 *****"
      endif
      print *,"***** OK7 *****"
c
c
      a=1
      do 60 k=1,10,10
      do 60 i=c,e,s
	do 60 j=d,10,t
	  a(i,j) = a(i,j) + i+j
60    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG2 *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG3 *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG4 *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG5 *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG6 *****"
      endif
      print *,"***** OK7 *****"
c
c
      a=1
      do 70 k=1,10,10
      do 70 i=c,e,s
	do 70 j=d,f,t
	  a(i,j) = a(i,j) + i+j
70    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG2 *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG3 *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG4 *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG5 *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG6 *****"
      endif
      print *,"***** OK7 *****"
c
c
      a=1
      do 80 k=1,10,10
      do 80 i=c,10,s
	do 80 j=d,f,t
	  a(i,j) = a(i,j) + i+j
80    continue
c
      if(a(1,1).ne.3) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(1,7).ne.9) then
	print *,a(1,7)
	print *,"***** NG2 *****"
      endif
      if(a(3,1).ne.5) then
	print *,a(3,1)
	print *,"***** NG3 *****"
      endif
      if(a(3,4).ne.8) then
	print *,a(3,4)
	print *,"***** NG4 *****"
      endif
      if(a(5,1).ne.7) then
	print *,a(5,1)
	print *,"***** NG5 *****"
      endif
      if(a(9,9).ne.1) then
	print *,a(9,9)
	print *,"***** NG6 *****"
      endif
      print *,"***** OK7 *****"
      end
