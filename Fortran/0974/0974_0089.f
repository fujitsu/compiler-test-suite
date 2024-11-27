        real*4 s/0/
        real*4 a(10)/1,2,3,4,5,6,7,8,9,10/
        real*4 res/55/

        do i=1,10
          s = s + a(i)
        enddo

        if (s.eq.res) then
          write(6,*) 'OK'
        else
          write(6,*) 'NG'
          write(6,*) 's = ',s
          write(6,*) 'res = ',res
        endif

        stop
        end
