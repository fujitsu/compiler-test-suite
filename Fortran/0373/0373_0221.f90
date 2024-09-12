      integer*4 w_i04a
      pointer (pi04a,i04a)
      real*4   r04a(3,3,3),r04b(3,3,3),r04c(3,3,3)
      pointer (pr04a ,r04a)
      pi04a = loc (w_i04a)
      r04b=1.0
      pr04a=loc(r04c)
      r04a=r04b+sin(dble(i04a+1))
      print*,' pass '
      stop
      end
