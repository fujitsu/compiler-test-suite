      k=                                                                aaaaaaaa
     &          100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1aaaaaaaa
     &11111                                                             aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
      if (k/=111111) print *,101                                        aaaaaaaa
                                                                        aaaaaaaa
      k=0                                                               aaaaaaaa
      k=                                                                aaaaaaaa
     &                                                                 1aaaaaaaa
     &11111                                                             aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (k/=111111) print *,102                                        aaaaaaaa
                                                                        aaaaaaaa
      k=0                                                               aaaaaaaa
      k=                                                                aaaaaaaa
     &                                                                 1aaaaaaaa
     &+10                                                               aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (k/=11) print *,103                                            aaaaaaaa
                                                                        aaaaaaaa
                                                                        aaaaaaaa
                                                                        aaaaaaaa
      k=0                                                               aaaaaaaa
      k=                                                                aaaaaaaa
     &                                                                1+aaaaaaaa
     &11                                                                aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (k/=12) print *,104                                            aaaaaaaa
                                                                        aaaaaaaa
      k=0                                                               aaaaaaaa
                        k=                                             1aaaaaaaa
     &11                                                                aaaaaaaa
C        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2aaaaaaa
                                                                        aaaaaaaa
      if (k/=111) print *,105                                           aaaaaaaa
      print *,'pass'                                                    aaaaaaaa
      end                                                               aaaaaaaa
