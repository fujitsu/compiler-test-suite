      program main
      integer*4 ary101(10,10,10),
     1          ary102(10,10,10),
     2          ary103(10,10,10)
      parameter (ipara1=0)
      data   ary101/1000*1./,ary102/1000*2./,ary103/1000*3./
      do 10 i=1,ipara1+9
       do 10 j=1,9
        do 10 k=1,9
           ary101(i,j,k)=ary102(i,j,k)*ary103(i,j,k)
   10      ary102(i,j,k)=ary101(i,j,k)/ary102(i,j,k)
      write(6,*) ' ary101= ',ary101
      write(6,*) ' ary102= ',ary102
      stop
      end
