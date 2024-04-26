      real(kind=8) x(1)/0/,y(1)/0/
      real(kind=4) a(20),mask(20),b(20)
      data a/20*2/,mask/10*1,10*0/
      data b/20*3/

      idx=1
      do i=1, 20
         y(1) = y(1) + b(i)
         if(mask(i).eq.0) then
            x(1) = x(1) + a(idx)
            idx=idx+1
         endif
      end do
      if (x(1).eq.20 .and. y(1).eq.60) then
         write(6,*) "ok"
      else
         write(6,*) "ng"
         write(6,*) x,y
      endif
      end
