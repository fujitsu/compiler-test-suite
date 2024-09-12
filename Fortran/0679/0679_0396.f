      program main
      real   a(10)/10*0./,c(10,10)/100*0./
      real   b(10)/10*1./,d(10,10)/100*1./
      integer l(10)

      do 1000 i=1,10
        l(i) = i
        b(i) = float(i)
        d(i,i) = i
1000  continue
      do 10 i=1,10
        a(l(i)) = b(i)
 10   continue
      write(6,*) a
      do 20 i=1,10
        a(i) = b(l(i))
 20   continue
      write(6,*) a
      do 30 i=1,10
        a(l(i)) = b(l(i))
  30  continue
      write(6,*) a
      do 40 i=1,10
        c(l(i),i) = d(i,i)
 40   continue
      write(6,*) c
      do 50 i=1,10
        c(i,i) = d(l(i),i)
 50   continue
      write(6,*) c
      do 60 i=1,10
        c(l(i),i) = d(l(i),i)
 60   continue
      write(6,*) c
      do 70 i=1,10
        c(l(i),l(i)) = d(l(i),l(i))
 70   continue
      write(6,*) c
      stop
      end
