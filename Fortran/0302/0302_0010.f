      program main
      real*4 a(5),b(5,5),c(5)
      iflag=0
      m=5
      do 220 i=1,m
        do 220 j=1,m
          a(i)=3.0
          c(i)=a(i)+a(i)
          b(i,j)=a(i)+c(i)
  220 continue
      do 430 i=1,5
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
            write(6,*) '*** ng ***'
            iflag=iflag+1
            goto 5000
          endif
  940 continue
 5000 continue;
      if(iflag.eq.0) then
        write(6,*) '*** ok ***'
      endif
      stop
      end
