       subroutine sub
       INTEGER  O, S, B
       S(B) = ISHFTC( 1, B)
        O= S(255)
        print *,O
        J=255
        O= S(J)
        print *,O
        J=2
        O= S(J)
        print *,O
       END
       print *,'pass'
       end
