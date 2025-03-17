       subroutine sub
       write(1,*) 16
       rewind 1
       read(1,*)J
        M=ISHFTC(1,J)
        write(2,*)M
       end
       print *,'pass'
       END
