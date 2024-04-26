       integer ia(10)
       ia = 2
       call sub2(ia)
       end
       subroutine sub2(ia)
       integer, intent(out) :: ia(*)
       ia(2) = ia(2)+1
       call sub1(ia)
       end
       subroutine sub1(ia)
       integer ia(*)
         ia(1) = ia(2)
         ia(2) = ia(3)
       print *,'pass'
       end
