      logical*4 m(500)/50*.true.,450*.false./
      real*8 a(500)/500*4/,b(2,500)/1000*1/,c(500,2)/1000*1/,d(500,3)
      integer*4 l1(500)/500*1/,l2(500,2)/1000*1/,j/1/
      integer*4 n/500/
      real*4    c1/1/,c2/2/

      do 20 i=1,n
        if ( m(i) ) then
          t1 = c1*a(i)
          t2 = c2*b(2,i)
          d(i,2) = sqrt(t1) + c(i,2)**l1(i) + t2**l2(i,j)
        endif
20    continue
      write(6,*) (d(j,2),k=1,100)
      stop
      end
