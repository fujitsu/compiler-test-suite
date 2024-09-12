      real*8  r802(10)/1,2,3,4,5,6,7,8,9,10/
      complex c802(10)/10*(1.0,1.0)/

      do i = 1, 10
        if (i.gt.1) then
            r802(i) = log(real(i))/c802(1)
            c802(i) = log(2.0)
        endif
      end do

      write (6, *) r802
      write (6, *) c802
      end
