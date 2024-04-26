       integer ia(10),ib(10)
       equivalence(ia(2),ib(2))
       ia = 2
       ib = 3
       call sub2(ia)
       end
       subroutine sub2(ia)
       integer, intent(out) :: ia(*)
       call sub1(ia)
       end
       subroutine sub1(ia)
       integer ia(*)
         ia(1) = ia(2)
       print *,'pass'
       end
