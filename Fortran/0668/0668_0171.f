      program main
      integer a(10,10),b(10),c(10)
      data a/100*0/,b/10*1/,c/10*2/
      do 10 i=1,10
        b(i)=ibset(i,b(i))
        do 20 j=1,10
          a(i,j) = ibclr(j**2,i)
          if (btest(i,j)) then
            a(i,j) = a(i,j) + ibset(j**2,i)
          endif
   20   continue
        c(i)=ibclr(b(i),i)
   10 continue
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,*) ' ## a ## '
      write(6,1) a
      write(6,*)
      write(6,*) ' ## b ## '
      write(6,1) b
      write(6,*)
      write(6,*) ' ## c ## '
      write(6,1) c
      write(6,*)
      do 30 i=10,1,-1
        c(i) = ibset(b(i),i)
        if (btest(c(i),i)) then
          do 40 j=1,10
            a(i,j)=ibset(a(i,j),1) - ibset(a(i,j),0)
   40     continue
        else
          do 50 j=10,1,-1
            a(i,j)=a(i,j)-ibset(j*i,j)
   50     continue
        endif
        do 60 j=1,10
          a(i,j) = ibclr(a(i,j)+j,i)
   60   continue
        c(i) = ibset(c(i),5)
   30 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,*) ' ## a ## '
      write(6,1) a
      write(6,*)
      write(6,*) ' ## b ## '
      write(6,1) b
      write(6,*)
      write(6,*) ' ## c ## '
      write(6,1) c
      write(6,*)
    1 format(10i7)
      stop
      end
