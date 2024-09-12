      program main
      integer*4 n9/9/
      real*8    d10(9),d11(9),d12(9),d13(9)
      data      d10,d12/18*0/,d11/1,2,3,4,5,6,7,8,9/,m/1/
      data      d13/5,4,3,2,1,0,-1,-2,-3/
      logical*4 l10(9)/.true.,.false.,.true.,.false.,.true.,.false.,
     1                 .true.,.false.,.true./
      logical*1 lb10(9)/2*.true.,2*.false.,2*.true.,2*.false.,.true./
      logical*1 lb11(9)/2*.true.,2*.false.,2*.true.,2*.false.,.true./
      do 10 i=2,n9
        if (l10(1)) go to 20
          if (lb10(2)) go to 40
 30         d10(i) = d10(i-1) + d11(i)
            d12(i) = d12(i) + d13(i)**m
            go to 10
 20       if (lb11(i)) go to 30
 40         d12(i) = d12(i) + d11(i)
            d13(i) = d13(i-1) + d12(i)
 10   continue
      write(6,*) ' d10 = ',d10
      write(6,*) ' d11 = ',d11,' i = ',i
      write(6,*) ' d12 = ',d12
      write(6,*) ' d13 = ',d13
      stop
      end
