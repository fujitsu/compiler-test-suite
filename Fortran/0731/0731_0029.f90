       module mod5
       integer modxl(10)
       integer::i=1
       end module

       subroutine sub
       use mod5
       modxl(i) = 1
       write(1,*) modxl(1)
       END

       call sub
       rewind 1
       read(1,*) k
       if (k/=1)write(6,*) "NG"
       print *,'pass'
       end

