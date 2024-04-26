       integer ia(512)
       ia = 2
       call sub2(ia)
       end
       subroutine sub2(ia)
       integer, intent(out) :: ia(*)
       call sub1(ia)
       end
       subroutine sub1(ia)
       integer ia(*)
       do i=1,511
         ia(i+1) = ia(i)
         ia(i+1) = ia(i+1)+ 1
       enddo
       print *,'pass'
       end
