       interface
       subroutine sub(ix)
       integer,intent(out),optional :: ix(10)
       end subroutine
       end interface
       integer :: ia(10)
       ia=1
       call sub(ia)
       end
       subroutine sub(ix)
       integer,intent(out),optional :: ix(*)
       call sub1(ix)
       end
       subroutine sub1(iy)
       integer iy(*)
       iy(1) = 1
       iy(3) = iy(2)
       print *,'pass'
       end
