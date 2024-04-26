      program main
      real  *8  d(3,3)/9*1./
      do 10 i=1,3
        if (d(i,i).eq.0.) goto 10
        do 15 j=1,3
   15     d(i,j)=j
   10 continue
      write(6,*) d
      stop
      end
