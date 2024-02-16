      PROGRAM test
      INTEGER x
      x = 0

      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &1
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2

c        X

      write(1,*)x
      rewind 1
      read(1,*)k
      if (k/=11)print *,k

      print *,'pass'
      end
