      real*8 a1(10),a2(10,10),x(15),a30(10),a31(15)
      real*8 b1(10),b30(10),b31(15),c30(10),c31(15)
      data a1,a2/110*0.0/,a30,a31/25*0./
      data b1/1,2,3,4,5,6,7,8,9,10/,b30/10*2./,b31/15*1.5/
      data c30/10*1./,c31/15*1./

      do 10 i=1,11
        if(i.le.10) then
          a1(i) = b1(i)
        endif
10    continue
      write(6,*) a1
      do 20 j=1,11
      do 20 i=1,10
        if(j.le.10) a2(i,j) = i + j
  20  continue
      write(6,*) a2
      do 30 i=1,15
        if ( i.le.10) then
          x(i) = 1.0
        else
          x(i) = 0.0
        endif
 30   continue
      do 31 i=1,11
        if(x(i).eq.1.0) then
          a30(i) = b30(i)+ c30(i)
        else
          a31(i) = b31(i)- c31(i)
        endif
 31   continue
      write(6,*) a30,a31
      stop
      end
