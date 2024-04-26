      integer a,b,c,x,y
      integer,allocatable,dimension(:)::w_y
      integer w_x,w_a
      pointer(py ,y) ,(px ,x),(pa ,a)
      
      allocate (w_y(1))
      py = loc (w_y(1))
      px = loc (w_x)
      y=2
      pa = loc (w_a)
      a=1
      b=10
      c=20
      if(y.gt.0)then
         write (6,*) '***   program    ***'
      end if
      go to (100,200,300),y
      x=a-c
      goto 400
  100 x=a-c-b
      goto 400
  200 x=a+b
      goto 400
  300 x=a-b
  400 write (6,*)x
      a=3
      b=5
      c=6
      if(x.gt.0)then
         write (6,*) '***  program ok  ***'
      else
         write (6,*) '***  program ng  ***'
      end if
      deallocate (w_y)
      stop
      end
