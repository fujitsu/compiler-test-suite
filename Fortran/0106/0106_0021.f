      real*4  a(16,1)/16*-1/
      real*4 b(16,1)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      
      ndim2 = b(1,1)
      ndim1 = b(13,1)

      do 100 j=1,ndim2
        do 110 i=1,ndim1
              a(i,j)=b(i,j)
  110   continue
  100 continue
      write(6,*) i

      write(6,1) a
 1    format (4f10.3)
 2    format (4i10)
      end
