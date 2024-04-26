      program main
      real*4 a(5),b(5,5),c(5),d(5,5)
      iflag=0
 1000 do 110 i=1,5
        a(i)=0.0
  110 continue
      do 120 i=1,5
        do 120 j=1,5
          c(i)=a(i)+1.0
          b(i,j)=a(i)+c(i)
  120 continue
      do 910 i=1,5
        do 910 j=1,5
          if(b(j,i).ne.1.0) then
            write(6,*) '*** (loop 910)  ng ***'
            iflag=iflag+1
            goto 2000
          endif
  910 continue
 2000 m=5
      do 210 i=1,m
        a(i)=1.0
  210 continue
      m=5
      do 220 i=1,m
        do 220 j=1,m
          c(i)=a(i)+a(i)
          b(i,j)=a(i)+c(i)
  220 continue
      do 920 i=1,5
        do 920 j=1,5
          if(b(j,i).ne.3.0) then
            write(6,*) '*** (loop 920)  ng ***'
            iflag=iflag+1
            goto 3000
          endif
  920 continue
 3000 n=6
      k=1
      do 310 i=1,5,k
        a(n-i)=2.0
  310 continue
      n=6
      k=1
      do 320 i=1,5,k
        do 320 j=1,5,k
          c(n-i)=a(n-i)+a(n-i)
          b(n-i,n-j)=a(n-i)+c(n-i)
  320 continue
      m=5
      n=6
      k=1
      do 330 i=1,m,k
        a(n-i)=3.0
  330 continue
      m=5
      n=6
      k=1
      do 340 i=1,m,k
        do 340 j=1,m,k
          c(n-i)=a(n-i)+a(n-i)
          d(n-i,n-j)=a(n-i)+c(n-i)
  340 continue
      do 930 i=1,5
        do 930 j=1,5
           if(abs(b(j,i)/2 - d(j,i)/3) > 0.00001) then
            write(6,*) '*** (loop 930)  ng ***'
            iflag=iflag+1
            goto 4000
          endif
  930 continue
 4000 do 410 i=1,5
        a(i)=1.0
        do 420 j=1,5
          c(j)=a(i)+a(i)
  420   continue
        do 430 j=1,5
          b(j,i)=a(i)+c(i)
  430   continue
  410 continue
      do 940 i=1,5
        do 940 j=1,5
          if(b(j,i).ne.3.0) then
            write(6,*) '*** (loop 940)  ng ***'
            iflag=iflag+1
            goto 5000
          endif
  940 continue
 5000 do 510 i=5,1,-1
        a(i)=2.0
        do 510 j=5,1,-1
          c(j)=a(i)+a(i)
          b(j,i)=a(i)+c(i)
  510 continue
      do 950 i=1,5
        do 950 j=1,5
          if(b(j,i).ne.6.0) then
            write(6,*) '*** (loop 950)  ng ***'
            iflag=iflag+1
            goto 6000
          endif
  950 continue
 6000 n=0
      do 610 i=n+1,n+5
        do 610 j=n+1,n+5
          a(i+n)=1.0
          c(i+n)=a(i+n)+a(i+n)
          b(j+n,i+n)=a(i+n)+c(i+n)
  610 continue
      do 960 i=1,5
        do 960 j=1,5
          if(b(j,i).ne.3.0) then
            write(6,*) '*** (loop 960)  ng ***'
            iflag=iflag+1
            goto 7000
          endif
  960 continue
 7000 if(iflag.eq.0) then
        write(6,*) '*** ok ***'
      endif
      stop
      end
