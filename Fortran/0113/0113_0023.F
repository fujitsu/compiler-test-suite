      k=        
     &          100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &11111
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2
      if (k/=111111) print *,101

      k=0
      k=        
     &                                                                 1
     &11111
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2

      if (k/=111111) print *,102

      k=0
      k=        
     &                                                                 1
     &+10
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2

      if (k/=11) print *,103



      k=0
      k=        
     &                                                                1+
     &11
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2

      if (k/=12) print *,104

      k=0
                        k=                                             1
     &11
c        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX2

      if (k/=111) print *,105
      print *,'pass'
      end
