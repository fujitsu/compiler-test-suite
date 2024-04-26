      real a(11,11),b(11,11)
      k=1

      do 10 j=1,11
      do 10 i=1,11
	a(i,j) = j
        b(i,j) = j
10    continue
c
      do 20 i=2,10
      do 20 j=2,10
	a(i+1,j-1) = a(i,j)+1
20    continue
c
      do 30 i=2,10
      k=i
      do 30 j=2,10
        b(i+1,j-1) = b(i,j)+1
30    continue

      k=k+1
      do 40 i=1,10
      do 40 j=1,10
	if( a(i,j) .ne. b(i,j) ) then
          print *,"***** NG *****"
        endif
40    continue
      print *,"***** OK *****"
      stop
      end
