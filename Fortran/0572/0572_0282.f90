call sub(2)
       end
       subroutine sub(k)
       integer a(k:0)
       call foo(a)
        print*,"pass"
       contains
       subroutine foo(bb)
       integer bb(..)
       if(rank(bb).ne.1)print*,101
       if(any(lbound(bb) /= 1))print*,201,lbound(bb)
       if(any(ubound(bb) /=0))print*,202
       if(any(shape(bb) /=0))print*,203
       if(size(bb) /=0)print*,204
      end subroutine
      end

