      program main
      integer  a(5,5,5)/125*0/,b(5,5,5)/23*1,23*2,23*3,23*4,23*5,10*6/
      do 10 i=1,4
       do 10 j=1,4
        do 10 k=1,j
         do 10 l=1,4
          a(i,l,k)=b(i,l,k)
  10  continue
      write(6,*) a
      stop
      end
