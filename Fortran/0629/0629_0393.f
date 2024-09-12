      integer * 8 IH4(4),IP4(4,4)
      integer * 4 N

      DO 2 N=1,4
        IH4(N    )=N
        DO 2 L=1,4
         IP4(N , L)=N
 2    continue
      write(6,*) IH4,IP4
      END
