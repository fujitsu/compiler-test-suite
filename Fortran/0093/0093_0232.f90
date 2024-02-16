       
       complex :: c(2)
       c=(3,5)
       call s1(c)
       contains
        subroutine s1(act)
       complex,asynchronous :: act(2)
       call sub(act%re)
       end subroutine
       subroutine sub(dmy)
       real,asynchronous :: dmy(:)
       if(any(dmy .ne. 3))print*,"101"
       print*,"pass"
       end subroutine
       end
    

