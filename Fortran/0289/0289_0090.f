      program main
      dimension a(10,10),b(10,10),c(10,10),d(10,10),k(10,10)
      integer   chk,c,d
      real      a,b,k
      do 6 i=1,10
       do 6 j=1,10
         k(i,j)=10*j
    6 continue
      do 1 i=1,10
       do 1 j=1,10
         a(j,i)=10*i+k(i,j)
         b(i,j)=k(i,j)
    1 continue
      do 2 i=1,10
       do 2 j=1,10
        c(i,j)=10**4*sin(a(j,i)+b(i,j))
        d(i,j)=10**4*(sin(a(j,i))*cos(b(i,j))+cos(a(i,j))*sin(b(i,j)))
    2 continue

      chk=0
      do 3 i=1,10
       do 3 j=1,10
      write(6,*) i,j,c(i,j),d(i,j)
         if(c(i,j).ne.d(i,j)) then
      write(6,100)
  100 format(1h,'** test is ng||| **')
          chk=chk+1
         endif
    3 continue
       if (chk.eq.0) then
        write(6,*) '*** test is ok| ***'
       endif
      stop
      end
