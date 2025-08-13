      PROGRAM test                                                      99999999
      INTEGER x                                                         99999999
      x = 0                                                             99999999
                                                                        99999999
      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -99999999
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  199999999
     &1                                                                 99999999
D        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX29999999
                                                                        99999999
D        X                                                              99999999
                                                                        99999999
      write(11,*)x                                                      99999999
      rewind 11                                                         99999999
      read(11,*)k                                                       99999999
      if (k/=11)print *,k                                               99999999
                                                                        99999999
      print *,'pass'                                                    99999999
      end                                                               99999999
