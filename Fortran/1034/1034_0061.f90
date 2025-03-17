      subroutine sub
      INTEGER  O, A, S, B, W
      PARAMETER(A=Z'FFF')
      S(W, B) = ISHFTC( W, B)
      O = S(S( 1, A), 8)
      write(1,*)O
      end
      print *,'pass'
      END
