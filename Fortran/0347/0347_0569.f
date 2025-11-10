      program main
      logical * 4 l1(10),l2(10),l3(10),l4(10),l5(10)
      integer * 4 n,m,rc1,rc2,rc3,rc4,rc5
      real * 4 a1(10),a2(10),a3(10)
      data l1/.true.,.false.,.true.,.false.,.true.,
     +        .false.,.true.,.false.,.true.,.false./
      data l5/10*.false./
      n = 1
      m = 10
      rc1 = 0
      rc2 = 0
      rc3 = 0
      rc4 = 0
      rc5 = 0
      do 99 i=1,10
        l2(i)=.false.
        l3(i)=.true.
        l4(i)=.false.
        l4(i)=.false.
        a1(i)=0.
        a2(i)=0.
        a3(i)=0.
 99   continue
      do 100 i1=n,m
        if (l1(i1)) then
          rc1 = rc1 + 1
          rc2 = rc2 + 1
          rc3 = rc3 + 1
          l2(rc1)=.true.
          l3(rc2)=.false.
          l4(rc3)=.true.
        endif
 100  continue
      do 101 i2=1,m
        if (l2(i2)  ) then
          a1(i2)=a1(i2)+1.
          if (l3(i2) ) then
            a2(i2)=a2(i2)+1
            if (l4(i2) ) then
              if (a1(i2).gt.0 ) then
                if (a2(i2).gt.0 ) then
                  rc4 = rc4 + 1
                  rc5 = rc5 + 1
                  l5(rc4)=l2(i2).or.l3(i2).or.l4(i2)
                  a3(rc4)=a1(i2)+1.
                endif
              endif
            endif
          endif
        endif
 101  continue
      write(6,*) rc1,rc2,rc3,rc4,rc5
      write(6,*) l1,l2,l3,l4,l5
      write(6,*) a1,a2,a3
      stop
      end
