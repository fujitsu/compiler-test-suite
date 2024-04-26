      real*4 a(10)/10*1/,c(10)/10*1/
      do 20 i=1,10
        c(i)=sin(a(i))
 20   continue

      do i=1,10
         if (abs(c(i)-0.841470957) .gt. 0.000001) then
            write(6,*) "ng"
            write(6,*) c(i)
            stop
         endif
      enddo
      write(6,*) "ok"
      end
