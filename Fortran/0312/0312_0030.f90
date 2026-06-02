       integer*8    rcI8(0)
       parameter (rcI8=transfer(2, 8_8))
       call sub(rcI8)
       end

       subroutine sub(rcI8)
       integer*8    rcI8(0)
        print *,'PASS'
       end
