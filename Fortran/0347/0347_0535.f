      real*4 x(2,2,10),a(10),b(10),c(10),d(10)
      integer*4 imin
      data   a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0/
      data   b/-7.d0,43.d0,1.d0,7.d0,-77.d0,33.d0,1.d0,52.d0,0.d0,6.d0/
      data   c/1.d0,3.d0,5.d0,6.d0,4.d0,3.d0,99.d0,-40.d0,3.d0,33.d0/
      data   d/-7.d0,43.d0,1.d0,7.d0,-77.d0,33.d0,1.d0,52.d0,0.d0,6.d0/
      data   imin/1/,l/1/,l2/1/
      do 1 i=1,10
        x(1,1,i)=a(i)
        x(1,2,i)=b(i)
        x(2,1,i)=c(i)
        x(2,2,i)=d(i)
    1 continue
      do 11 i=1,2
        do 11 j=1,2
          do 11 k=1,10
            if(x(i,j,k).lt.x(l,l2,imin)) then
              l=i
              l2=j
              imin=k
          endif
   11 continue
      write(6,*) 'min***   ','x(',l,',',l2,',',imin,')'
      end
