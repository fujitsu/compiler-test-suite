       integer x(10)
       x = 2
       call sub2(x)
       end
       subroutine sub2(x)
       integer, intent(out) :: x(*)
       call sub1(x)
       end
       subroutine sub1(x)
       integer x(*)
       x(1) = 1
       x(3) = x(2)
       x(3) = x(1)+x(3)
       print *,'pass'
       end
