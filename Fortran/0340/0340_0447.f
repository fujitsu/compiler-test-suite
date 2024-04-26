        real*8 a(10),b(10)
        do i=1,10
           if (i.gt.1) then
              a(i) = i
              b(i) = 3
           endif
        enddo
        print *, a(10),b(2)
        end
