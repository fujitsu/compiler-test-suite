      PROGRAM test                                                      99999999
      INTEGER x                                                         99999999
      x = 0                                                             99999999
                                                                        99999999
      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -99999999
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  199999999
     &1                                                                 99999999
*        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZZZZZZZ9
                                                                        99999999
*        X                                                              99999999
                                                                        99999999
      write(9,*)x                                                       99999999
                                                                        99999999
                                                                        99999999
      x = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -99999999
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000    +99999999
     &11                                                                99999999
*        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZZZZZZZ9
                                                                        99999999
      write(9,*)x                                                       99999999
      rewind 9                                                          99999999
      read(9,*) k                                                       99999999
      if (k/=11)print *,101,k                                           99999999
      read(9,*) k                                                       99999999
      if (k/=11)print *,102,k                                           99999999
      print *,'pass'                                                    99999999
      end                                                               99999999
