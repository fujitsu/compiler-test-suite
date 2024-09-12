      program main
      parameter (i100=100,i1=1)
      integer a(i100,i100),b(i100,i100)
      integer c(i100,i100),d(i100,i100)
      data a,b,c,d/40000*0/,n/0/
      data inc1,inc2,inc3,inc4,inc5/-1,-2,-3,-4,-5/
      do 10 i=i100,i1,inc3
        if (i.le.50) then
          do 20 j=i100,i1,inc2
            b(i,j) = j
            a(i,j) = ibset(b(i,j),c(i,j))
   20     continue
        else
          do 30 j=i100,i1,inc4
            if (j.le.30) then
              c(i,j) = j
              a(i,j) = ibset(b(i,j),c(i,j))
            endif
   30     continue
        endif
        do 40 j=i100,i1,inc5
          d(i,j) = ibclr(a(i,j),10)
          if (btest(d(i,j),2)) then
            n = i1
          else
            n = i1+i1
          endif
          d(i,j) = ibset(d(i,j),n)
   40   continue
   10 continue
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,1) ((a(i,j),i=i1,i100,25),j=i1,i100,15)
      write(6,*)
      write(6,1) ((b(i,j),i=i1,i100,25),j=i1,i100,15)
      write(6,*)
      write(6,1) ((c(i,j),i=i1,i100,25),j=i1,i100,15)
      write(6,*)
      write(6,1) ((d(i,j),i=i1,i100,25),j=i1,i100,15)
      write(6,*)
      write(6,1) n
      write(6,*)
      do 50 i=i1,i100,-inc1
        do 50 j=i1,i100,-inc1
          a(i,j) = ibclr(a(i,j),1) + ibset(d(i,j),0)
   50 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,1) ((a(i,j),i=i1,i100,15),j=i1,i100,15)
      write(6,*)
      do 60 i=i100,i1,inc1
        do 60 j=i100,i1,inc1
          a(i,j) = ibclr(a(i,j),0) + ibset(d(i,j),1)
   60 continue
      write(6,*) ' ## test 3 ## '
      write(6,*)
      write(6,1) ((a(i,j),i=i1,i100,15),j=i1,i100,15)
      write(6,*)
    1 format(10i7)
      stop
      end
