      PROGRAM test                                                      aaaaaaaa
      INTEGER x                                                         aaaaaaaa
      x = 0                                                             aaaaaaaa
                                                                        aaaaaaaa
      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -aaaaaaaa
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1aaaaaaaa
     &1                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZZZZZZZa
                                                                        aaaaaaaa
C        X                                                              aaaaaaaa
                                                                        aaaaaaaa
      write(15,*)x                                                       aaaaaaaa
                                                                        aaaaaaaa
                                                                        aaaaaaaa
      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -aaaaaaaa
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000    +aaaaaaaa
     &11                                                                aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZZZZZZZa
                                                                        aaaaaaaa
      write(15,*)x                                                       aaaaaaaa
      rewind 1                                                          aaaaaaaa
      read(1,*) k                                                       aaaaaaaa
      if (k/=11)print *,101,k                                           aaaaaaaa
      read(1,*) k                                                       aaaaaaaa
      if (k/=11)print *,102,k                                           aaaaaaaa
      print *,'pass'                                                    aaaaaaaa
      end                                                               aaaaaaaa
