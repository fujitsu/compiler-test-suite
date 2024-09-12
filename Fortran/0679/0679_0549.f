      program main
      real a(10),b(10),c(10),d(10),s(10)
      logical la(10),lb(10),lc(10),lm(10),ls(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/0,2,4,5,5,4,7,8,2,11/
      data c/0,2,4,4,5,6,7,8,9,10/
      data lm/.true.,.false.,.true.,.false.,.true.,
     1           .false.,.true.,.false.,.true.,.false./

      do 10 i=1,10
        s(1) = a(i) + b(i)
  10  continue
      write(6,*) s(1)

      do 20 i=1,10
        ls(1) = a(i).ne.b(i)
 20   continue
      write(6,*) ls(1)

      do 30 i=1,10
        s(1) = a(i) + b(i)
        c(i) = s(1)
        d(i) = s(1)*b(i)
  30  continue
      write(6,*) s(1)

      do 40 i=1,10
        ls(1) = a(i).ne.b(i)
        la(i) = ls(1)
        lb(i) = ls(1) .or. la(i)
 40   continue
      write(6,*) ls(1)
      stop
      end
