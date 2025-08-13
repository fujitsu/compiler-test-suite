       subroutine sub
       INTEGER  O
        J=255
        O=ISHFTC(1,J)
        write(42,*)O
        K=ISHFTC(1,16)
        write(42,*)K
       end
       print *,'pass'
       END
