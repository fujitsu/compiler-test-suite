      program main
      real   a1(30),a2(30),a3(30),b1(30),rc
      data a1,a2,a3,b1/120*1/,rc/80/
      integer  n/30/
      real   aa1(30),aa2(30)
      do 10 i=2,n-1
       a1(i) = b1(i) * (n-i)
       a1(i) = sqrt(a1(i))
       a2(i+1) = sin(a2(i-1))
   10 continue

      read(5,*) aa1,aa2
      if( .not.all(abs((a1-aa1)/a1).le.1.0e-5) ) print *,' NG 1 '
      if( .not.all(abs((a2-aa2)/a2).le.1.0e-5) ) print *,' NG 1 '
      do 20 i=2,n-1
       a1(i) = b1(i) * (n-i)
       a1(i) = sqrt(rc)
       a2(i+1) = sin(rc)+a2(i)
   20 continue

      read(5,*) aa1,aa2
      if( .not.all(abs((a1-aa1)/a1).le.1.0e-5) ) print *,' NG 1 '
      if( .not.all(abs((a2-aa2)/a2).le.1.0e-5) ) print *,' NG 1 '
      do 30 i=2,n-1
       a1(i) = b1(i) * (n-i)
       a1(i) = sqrt(rc)
       a2(i+1) = amod(a2(i),a3(i))
   30 continue

      read(5,*) aa1,aa2
      if( .not.all(abs((a1-aa1)/a1).le.1.0e-5) ) print *,' NG 1 '
      do i=1,size(a2)
      if( a2(i) .eq. 0 ) then
        if( aa2(i) .ne. 0 ) print *,' NG 2 '
      else if( abs((a2(i)-aa2(i))/a2(i)) .gt.1.0e-5 ) then
        print *,' NG 1 '
      endif
      end do
      do 40 i=2,n-1
       a1(i) = b1(i) * (n-i)
       a1(i) = sqrt(rc)
       a2(i+1) = amod(a2(i),rc)
   40 continue

      read(5,*) aa1,aa2
      if( .not.all(abs((a1-aa1)/a1).le.1.0e-5) ) print *,' NG 1 '
      if( .not.all(abs((a2-aa2)/a2).le.1.0e-5) ) print *,' NG 1 '
      do 50 i=2,n-1
       a1(i) = b1(i) * (n-i)
       a1(i) = sqrt(rc)
       a2(i+1) = mod(a2(i),3)
   50 continue

      read(5,*) aa1,aa2
      if( .not.all(abs((a1-aa1)/a1).le.1.0e-5) ) print *,' NG 1 '
      if( .not.all(abs((a2-aa2)/a2).le.1.0e-5) ) print *,' NG 1 '
      print *,' PASS '
      end
