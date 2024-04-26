      program main
      integer * 4 rc1,rc2,rc3,rc4,rc
      real* 4 a2(20),a3(20)
      logical * 4 l1(20),l2(20),l3(20),ls
      data rc/1/,n/1/,m/10/
      data a2/20*1.0/,a3/20*1.0/
      data l1/.true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true./
      data l2/.false.,.true.,.false.,.true.,.false.,
     +        .true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true./
      data l3/.true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true.,
     +        .true.,.false.,.true.,.false.,.true./
      rc1 = 0
      rc2 = 0
      rc3 = 0
      rc4 = 0
      do 100 i1=1,10
        ls=l1(i1)
        if (ls)  then
          rc1 = rc1 + 1
          l2(rc1)=.not.l1(i1)
        endif
 100  continue
      do 101 i2=n,m
        if (l3(i2)) then
          rc2 = rc2 + rc
          a2(rc2)=i2
        endif
 101  continue
      do 102 i3=1,m
        if  (l3(i3)) then
          rc3 = rc3 + rc
          a3(rc3)=i3
        else
          rc4 = rc4 + rc
          a3(rc4)=i3+1.
        endif
 102  continue
       write(6,*) rc1,rc2,rc3,rc4
       write(6,*) a2,a3,l1,ls
      stop
      end
