      k=0                                                               x
c$    k=                                                                x
c$   c1
      if (k/=1) print *,101
      k=0
c$   0k=1
c$   1
c$   2
c$   !
c$   c                                                                  x
      if (k/=1) print *,101
      k=0
c$   0                                                                  x
c$   1                                                                  x
c$   2 k=                                                                 x
c$   !                                                                  x
c$   !1                                                                 x
      if (k/=1) print *,101
      k=0
c$    k
c$   1=1
c$   c
      if (k/=1) print *,101
      k=0
c$   0k=
c$   1
c$   2
c$   !1
c$   c                                                                  x
      if (k/=1) print *,101
      k=0
c$   0 k=                                                                 x
c$   1                                                                  x
c$   2                                                                  x
c$   !                                                                  x
c$   !1                                                                 x
      if (k/=1) print *,101
      print *,'pass'
      end
