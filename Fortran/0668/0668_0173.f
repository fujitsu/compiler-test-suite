      program main
      integer a(50,50,50),b(50,50,50)
      integer c(50,50,50),d(50,50)
      integer e(50,50),f(50,50),g(50)
      integer h(50)
      logical l1(50,50),l2(50,50,50)
      data b,c/125000*5,125000*1/
      data f,g/2500*0,50*1/,h/50*3/
      do 10 i=1,50
        do 10 j=1,50
          do 10 k=1,50
            a(i,j,k) = ibclr(b(i,j,k),c(i,j,k)-1)
   10 continue
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,*) ' a(1,1,1) = ',a(1,1,1)
      write(6,*)
      do 30 i=1,50
        do 30 j=1,50
          e(i,j) = 7
          do 20 k=1,50
            a(i,j,k) = ibset(b(i,j,k),c(i,j,k))
   20     continue
        d(i,j) =  ibclr(e(i,j),f(i,j))
   30 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,*) ' a(1,1,1) = ',a(1,1,1)
      write(6,*)
      write(6,*) ' d(1,1) =   ',d(1,1)
      write(6,*)
      do 40 i=1,50
        g(i) = ibset(h(i),2)
        do 50 j=1,50
          l1(i,j) = btest(d(i,j),f(i,j))
          do 60 k=1,50
            l2(i,j,k) = btest(a(i,j,k),c(i,j,k))
   60     continue
          if (l1(i,j)) e(i,j) = ibset(d(i,j),f(i,j))
   50   continue
        g(i) = ibclr(g(i),h(i))
   40 continue
      write(6,*) ' ## test 3 ## '
      write(6,*)
      write(6,*) ' g(1) =     ',g(1)
      write(6,*)
      write(6,*) ' l1(1,1) =  ',l1(1,1)
      write(6,*)
      write(6,*) ' l2(1,1,1)= ',l2(1,1,1)
      write(6,*)
      write(6,*) ' e(1,1) =   ',e(1,1)
      stop
      end
