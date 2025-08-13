      PROGRAM test
      INTEGER x
      x = 0

      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &1
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZZZZZZZ

c        X

      write(3,*)x


      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000    +
     &11
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZZZZZZZ

      write(3,*)x
      rewind 3
      read(3,*) k
      if (k/=11)print *,101,k
      read(3,*) k
      if (k/=11)print *,102,k
      print *,'pass'
      end
