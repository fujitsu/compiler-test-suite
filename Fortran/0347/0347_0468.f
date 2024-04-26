      program main
      real   a(2,10)/9,8,7,6,5,4,3,2,1,0,1,2,3,4,5,6,7,8,9,-1/
      real   b(2,2,10)/40*0/,c(2)/1000,1000/,d(2)/1000,1000/

      do 10 i=1,2
       n=(i-1)*5
       do 20 j=1,2
        do 30 k=1,10
         if (a(j,k).gt.n) then
          l=k
          goto  20
         else
          b(i,j,k)=k
         end if
  30    continue
        c(j)=k
  20   continue
       d(i)=i
  10   write(6,*) k,l,a,b,c,d
       stop
       end
