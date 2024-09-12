      program main
      real a(10,10),b(10,10),c(10,10),d(10,10)
      logical ls1,l(10,10),la(10,10),lb(10,10),lc(10,10)
      data a/100*1./,b/100*2./,l/100*.true./
      data c/100*3./,d/100*4./
      data la/100*.false./,lb/100*.false./,lc/100*.true./

      do 10 i=1,10
      do 10 j=1,10
        s1 = a(i,j) + b(i,j)
  10  continue
      write(6,*) s1

      do 20 i=1,10
      do 20 j=1,10
        ls1 = a(i,j) .ne. b(i,j)
 20   continue
      write(6,*) ls1

      do 30 j=1,10
      do 30 i=1,10
        s1 = a(j,i) + b(j,i)
        c(j,i) = s1
        s1 = a(j,i) + c(j,i)
        d(j,i) = s1*b(j,i)
  30  continue
      write(6,*) s1

      do 40 i=1,10
      do 40 j=1,10
        if(l(i,j)) s1 = a(i,j) + b(i,j)
  40  continue
      write(6,*) s1

      do 50 i=1,10
      do 50 j=1,10
        if(l(i,j)) ls1 = a(i,j) .ne. b(i,j)
 50   continue
      write(6,*) ls1

      do 60 j=1,10
      do 60 i=1,10
        if(.not.l(j,i)) go to 60
        s1 = a(j,i) + b(j,i)
        c(j,i) = s1
        s1 = a(j,i) + c(j,i)
        d(j,i) = s1*b(j,i)
  60  continue
      write(6,*) s1

      do 70 j=1,10
      do 70 i=1,10
        if(.not.l(j,i)) go to 70
        ls1 = a(j,i) .eq. b(j,i)
        la(j,i) = ls1
        ls1 = a(j,i) .ne. c(j,i)
        lc(j,i) = ls1.and.lb(j,i)
  70  continue
      write(6,*) ls1

      stop
      end
