      program main
      real a(10),b(10),c(10),av,x
      real aa(10),ab(10),ac(10)
      data a,b/20*5/,av/8/,x/1/
      integer  n/10/
      c=0

      do 10 i=2,n-1
        b(i)=b(i) * 2
        a(i+1)=sin(abs(a(i-1)))
        c(i)= a(i) + b(i)
   10 continue

      read(5,*) a,b,c
      do 20 i=1,n-1
        b(i)=b(i) * 2
        a(i)=sin(abs(av))
        c(i)= a(i) + b(i)
   20 continue

      read(5,*) aa,ab,ac
      if( .not. all(abs((aa-a)/aa).le.0.1e-5)) print *,' NG 1 '
      if( .not. all(abs((ab-b)/ab).le.0.1e-5)) print *,' NG 2 '

      do i=1,10
	if( ac(i) == 0 ) then
	  if( c(i) /= 0 ) print *,' NG3 '
	else if( .not. abs((ac(i)-c(i))/ac(i)).le.0.1e-5) then
          print *,' NG 3 ',c(i)
        endif
      enddo

      do 30 i=2,n-1
        b(i)=b(i) * 2
        a(i+1)=sin(av) + a(i-1)
        c(i)= a(i) + b(i)
   30 continue

      read(5,*) aa,ab,ac
      if( .not. all(abs((aa-a)/aa).le.0.1e-5)) print *,' NG 1 '
      if( .not. all(abs((ab-b)/ab).le.0.1e-5)) print *,' NG 2 '

      do i=1,10
	if( ac(i) .eq. 0 ) then
	  if( c(i) .ne. 0 ) print *,' NG3 '
	else if( abs((ac(i)-c(i))/ac(i)) .gt. 0.1e-5 ) then
	  print *,' NG 3 '
	endif
      end do

      do 40 i=1,n-1
        b(i)=b(i) * 2
        a(i)=sin(abs(av))
        c(i)= a(i) + b(i)
        av = av + x
   40 continue

      read(5,*) aa,ab,ac
      if( .not. all(abs((aa-a)/aa).le.0.1e-5)) print *,' NG 1 '
      if( .not. all(abs((ab-b)/ab).le.0.1e-5)) print *,' NG 2 '
      do i=1,10
	if( ac(i) .ne. 0 ) then
        if( abs((ac(i)-c(i))/ac(i)).gt.0.1e-5 ) print *,' NG 3 '
	else
	if( c(i) .ne.0 ) print *,' NG3 '
	endif
      enddo
      print *, ' PASS '
      end
