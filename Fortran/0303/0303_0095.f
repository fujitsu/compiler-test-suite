      program main
      integer a(10),b(10),c(10),x,y
      integer res(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data c/5,4,4,2,2,2,3,3,3,2/
      data res/2,18,84,20,30,42,350,520,738,110/

      do i=1,10
        x=a(i)
        y=c(i)
        y=x**y
        b(i)=x+y
      enddo
      do i=1,10
        if (b(i).ne.res(i)) then
          write(6,*) 'ng'
          write(6,*) 'b(result) - res(compued)'
          write(6,*) 'result   = ',b
          write(6,*) 'computed = ',res
          goto 100
        endif
      enddo
      write(6,*) 'ok'
  100 continue
      stop
      end program
