      PROGRAM test                                                      aaaaaaaa
      INTEGER x                                                         aaaaaaaa
      x = 0                                                             aaaaaaaa
                                                                        aaaaaaaa
      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -aaaaaaaa
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1aaaaaaaa
     &1                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
C        X                                                              aaaaaaaa
                                                                        aaaaaaaa
      write(1,*)x                                                       aaaaaaaa
      rewind 1                                                          aaaaaaaa
      read(1,*)k                                                        aaaaaaaa
      if (k/=11)print *,k                                               aaaaaaaa
                                                                        aaaaaaaa
      print *,'pass'                                                    aaaaaaaa
      end                                                               aaaaaaaa
