      real*8 a1(10),a2(10,10),x(15),a30(10),a31(15)
      real*8 b1(10),b30(10),b31(15),c30(10),c31(15)
      data a1,a2/110*0.0/,a30,a31/25*0./
      data b1/1,2,3,4,5,6,7,8,9,10/,b30/10*2./,b31/15*1.5/
      data c30/10*1./,c31/15*1./

      k = 0
      do 10 i=1,11
        k = k + 1
        if(k.le.10) then
          a1(k) = b1(i)
        endif
10    continue
      write(6,*) a1
      l = 1
      do 20 j=1,11
      do 20 i=1,10
        if(l.le.10) a2(i,l) = i + j
        l = l + 1
  20  continue
      write(6,*) a2
      do 30 i=1,11
        if ( i.le.10) then
          x(i) = 1.0
        else
          x(i) = 0.0
        endif
 30   continue
      m = 0
      do 31 i=1,11
        m = m + 1
        if(x(m).eq.1.0) then
          a30(m) = b30(i)+ c30(i)
        else
          a31(i) = b31(m)- c31(i)
        endif
 31   continue
      write(6,*) a30,a31
      stop
      end
