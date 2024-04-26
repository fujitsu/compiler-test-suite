      PROGRAM MAIN
      IMPLICIT INTEGER*4(G)
      INTEGER*4 G,G5
      type z
        integer::i=-2
        integer::j=-1
      end type
      type (z) a
      POINTER (LM,GPL6L)
      LM=LOC(G)
      a%i=-2
      a%j=-1

      G5=0
      DO  G=-2,-7,-2
        G5=G5+5
        GPL6L=G+a%i+a%j
      END DO

      if (GPL6L.ne.-17) then
        print *,'ng'
        print *,'GPL6L=G=-17 : but GPL6L=',GPL6L,', G=',G
        else if (G5.ne.15) then
        print *,'G5=15 : but G5=',G5
      else
        print *,'ok'
      endif
      STOP
      END PROGRAM
