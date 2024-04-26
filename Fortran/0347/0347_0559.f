      real*4 x(2,11),a(11),b(11)
      integer*4 imin
      l=0
      data   a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0,
     +       1./
      data   b/1.d0,2.d0,3.d0,4.d0,5.d0,6.d0,7.d0,8.d0,9.d0,10.d0,
     +       1./
      data   imin/1/
      do 1 i=1,11
        x(1,i)=a(i)
        x(2,i)=b(i)
    1 continue
      write(6,*) x
      do 11 i=1,2
        do 11 j=1,9
          if(x(i,j+1).lt.x(i,imin+1)) then
            imin=j
          endif
   11 continue
      write(6,*) 'imix***   ','x(',l,',',imin,')'
      end
