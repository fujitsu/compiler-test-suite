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
       integer x(10),y(10)
       x = y
       print *,'pass'
       end
