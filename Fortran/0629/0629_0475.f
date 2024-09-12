      program main
      parameter (n=10)
      integer i401(n,n),a(n,n)
      data i401/100*2/
      i401(1,10) = -1
      i408 = 0
      do 40 i=10,1,-1
        do 40 j=1,10
          if (i401(i,j).gt.1) then
             i408 = i
             a(i,j)=i408
          endif
   40 continue
      print*,a(n,n)
      end
