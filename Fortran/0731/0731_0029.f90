       module mod5
       integer modxl(10)
       integer::i=1
       end module

       subroutine sub
       use mod5
       modxl(i) = 1
       write(13,*) modxl(1)
       END

       call sub
       rewind 13
       read(13,*) k
       if (k/=1)write(6,*) "NG"
       print *,'pass'
       end
