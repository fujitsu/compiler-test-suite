       integer x,y(10)
       allocatable :: x(:)
       allocate (x(10))
       x = 2
       y = 3
       call sub2(x,y)
       end
       subroutine sub2(x,y)
       integer, intent(out) :: x(*),y(*)
       call sub1(x,y)
       end
       subroutine sub1(x,y)
       integer x(*),y(*),ii
       x(1) = 1
       ii = x(2)
       x(1) = ii+x(1)
       y(2) = y(1)
       y(3) = y(2)+x(3)
       print *,'pass'
       end
