      !k=0                                                              aaaaaaaa
                        k=                                            1_aaaaaaaa
C YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY3aaaaaaa
     &4+                                                                aaaaaaaa
     &5                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (k/=6) print *,105                                             aaaaaaaa
                                                                        aaaaaaaa
      kkk=10                                                            aaaaaaaa
      k=                                                               kaaaaaaaa
C YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY3aaaaaaa
     &kk+1                                                              aaaaaaaa
     &5                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (k/=25) print *,106                                            aaaaaaaa
                                                                        aaaaaaaa
      a=                                                               1aaaaaaaa
C YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY3aaaaaaa
     &.                                                                 aaaaaaaa
     &5                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (abs(a-1.5)>0.00001) print *,107                               aaaaaaaa
                                                                        aaaaaaaa
      a=                                                              1.aaaaaaaa
C YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY3aaaaaaa
     &0                                                                 aaaaaaaa
     &5                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (abs(a-1.05)>0.00001) print *,108                              aaaaaaaa
                                                                        aaaaaaaa
                                                                        aaaaaaaa
      a=                                                              11aaaaaaaa
C YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY3aaaaaaa
     &11.                                                               aaaaaaaa
     &5                                                                 aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (abs(a-1111.5)>0.00001) print *,109                            aaaaaaaa
                                                                        aaaaaaaa
      print *,'pass'                                                    aaaaaaaa
      end                                                               aaaaaaaa
