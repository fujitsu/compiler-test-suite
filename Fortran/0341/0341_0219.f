      real a(11,11,11),b(11,11,11),c(11,11,11)
      k=1

      do 10 j=1,11
      do 10 i=1,11
      do 10 m=1,11
	a(m,i,j) = j
        b(m,i,j) = j
        c(m,i,j) = j
10    continue
c
      do 20 m=2,10
      do 20 i=2,10
      do 20 j=2,10
	c(i,j,m)     = a(i+1,j-1,m)+1
	a(i,j,m) = c(i,j,m)
20    continue
c
      do 11 j=1,10
      do 11 i=1,10
      do 11 m=1,10
        c(m,i,j) = j
11    continue

      do 30 m=2,10
      k=i
      do 30 i=2,10
      k=i
      do 30 j=2,10
	c(i,j,m)     = b(i+1,j-1,m)+1
	b(i,j,m) = c(i,j,m)
30    continue

      k=k+1
      do 40 i=1,10
      do 40 j=1,10
      do 40 m=1,10
	if( a(i,j,m) .ne. b(i,j,m) ) then
          print *,"***** NG *****"
        endif
40    continue
      print *,"***** OK *****"
      stop
      end