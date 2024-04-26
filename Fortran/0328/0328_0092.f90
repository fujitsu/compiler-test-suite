       program alias2
       real x(10)
       do i =1,10
          x(i) = i
       enddo
       call sub(x(1),x(5))
       print *,'pass'
       end
       subroutine sub(x,y)
       real x(*) , y(*)
       y(1) = 0
       x(10) = 0
       end
