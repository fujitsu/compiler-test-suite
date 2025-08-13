      PROGRAM test
      INTEGER x
      x = 0

      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &1
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2

c        X

      write(2,*)x
      rewind 2
      read(2,*)k
      if (k/=11)print *,k

      print *,'pass'
      end
