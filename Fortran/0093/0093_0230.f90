       complex :: c(2)
       c=(3,5)
       call s1(c)
        contains
        subroutine s1(act)
       complex,asynchronous :: act(2)
       call sub(act(1)%im)
       end subroutine
       subroutine sub(dmy)
       real,asynchronous :: dmy
       if(dmy .ne. 5)print*,"101"
       print*,"pass"
       end subroutine
       end
