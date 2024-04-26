c
       program   main
       real      a,reslt,answer
       parameter (a=2.0)
c
       answer=sqrt(2.0)
       call   biscts(a,reslt)
       call   print(reslt,answer,'binary section method ')
       call   newton(a)
       call   print(reslt,answer,'    newtons method    ')
       stop
       end
c
       subroutine biscts(x,middle)
       real    x,left,right,middle
       integer times
c
       times = 0
       left  = 0.0
       right = (x+1.0)*0.5
c
 200      times = times + 1
          middle = (left + right) / 2.0
          if(middle**2-x .gt. 0.0) then
              right = middle
          else
              left  = middle
          endif
c
       if(right-left .ge. 1.0e-6) goto 200
       return
       end
c
       subroutine newton(x)
       real x,x1,x2
       integer times
c
       times = 0
       x2 = (x+1.0)*0.5
c
 200     times = times + 1
         x1 = x2
         x2 = (x1+x/x1)*0.5
c
       if(x1 .gt. x2) goto 200
c
       return
       end
c
       subroutine print(middle,ans,coment)
       real    middle,ans
       character*22 coment
c
       write(6,*) '****',coment,'****'
       write(6,*) middle,ans
c
       if(middle-ans .le. 10e-6) then
            write(6,*) 'test ===> ok'
       else
            write(6,*) 'test ===> ng'
       endif
c
       return
       end
