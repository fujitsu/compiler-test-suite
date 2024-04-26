      real(kind=8) x/0/,b(20),res(20)
      real(kind=8) a(20),mask(20)
      data a/20*2/,mask/10*1,10*0/
      data b/20*3/
      data res/1,2,3,4,5,6,7,8,9,10,10*2/
      idx=1
      do i=1, 20
         x = x  + b(i)
         if(mask(i).eq.0) then
            a(idx) = i-10
            idx=idx+1
         endif
      end do
      do i=1,20
         if (a(i).ne.res(i) .or. x.ne.60) then
            write(6,*) "ng"
            write(6,*) a
            stop
         endif
      enddo
      write(6,*) "ok"
      end
