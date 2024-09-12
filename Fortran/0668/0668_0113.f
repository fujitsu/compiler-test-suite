      program main

      integer*4  i01a(20),i01b(20),i01c(20)
      real*4     r01a(20),r01b(20),r01c(20)
      real*8     d01a(20),d01b(20),d01c(20)
      complex*8  c01a(20),c01b(20),c01c(20)
      complex*16 cd01a(20),cd01b(20),cd01c(20)
      logical*4  l01a(20),l01b(20)
      data       i01a/20*0/,i01b/20*2/,i01c/20*3/
      data       r01a/20*0/,r01b/20*5.5/,r01c/20*3.3/
      data       d01a/20*0/,d01b/20*2.5/,d01c/20*1.1/
      data       c01a/20*1/,c01b/20*6./,c01c/20*3./
      data       cd01a/20*1/,cd01b/20*8./,cd01c/20*3./
      data       l01a/20*.true./,l01b/10*.false.,10*.true./

      write(6,*) '**** ****'
      do 10 i=1,20
        i01a(i)=i01b(i)+i01c(i)
        i01a(i)=i01a(i)-i01c(i)
        i01a(i)=i01a(i)*i01c(i)
        i01a(i)=i01a(i)/i01c(i)
   10 continue
      write(6,*) ' '
      write(6,*) '##check p1##'
      write(6,*) i01a

      do 20 i=1,20
        r01a(i)=r01b(i)+r01c(i)
        r01a(i)=r01a(i)-r01c(i)
        r01a(i)=r01a(i)*r01c(i)
        r01a(i)=r01a(i)/r01c(i)
   20 continue
      write(6,*) ' '
      write(6,*) '##check p2##'
      write(6,100) r01a
  100 format(5f16.10)

      do 30 i=1,20
        d01a(i)=d01b(i)+d01c(i)
        d01a(i)=d01a(i)-d01c(i)
        d01a(i)=d01a(i)*d01c(i)
        d01a(i)=d01a(i)/d01c(i)
   30 continue
      write(6,*) ' '
      write(6,*) '##check p3##'
      write(6,200) d01a
  200 format(5f16.10)

      do 40 i=1,20
        c01a(i)=c01b(i)+c01c(i)
        c01a(i)=c01a(i)-c01c(i)
        c01a(i)=c01a(i)*c01c(i)
        c01a(i)=c01a(i)/c01c(i)
   40 continue
      write(6,*) ' '
      write(6,*) '##check p4##'
      write(6,300) c01a
  300 format(f10.7)

      do 50 i=1,20
        cd01a(i)=cd01b(i)+cd01c(i)
        cd01a(i)=cd01a(i)-cd01c(i)
        cd01a(i)=cd01a(i)*cd01c(i)
        cd01a(i)=cd01a(i)/cd01c(i)
   50 continue
      write(6,*) ' '
      write(6,*) '##check p5##'
      write(6,400) cd01a
  400 format(f10.7)

      do 60 i=1,20
        l01a(i)=l01b(i)
   60 continue
      write(6,*) ' '
      write(6,*) '##check p6##'
      write(6,*) l01a

      do 70 i=1,20
        i01b(i)=i01c(i)
        r01a(i)=(i01b(i)+cd01c(i))*i01a(i)
        d01a(i)=c01a(i)-r01c(i)
        c01a(i)=r01a(i)*d01c(i)
        i01a(i)=cd01a(i)/c01c(i)
   70 continue
      write(6,*) ' '
      write(6,*) '##check p7##'
      write(6,500) r01a
      write(6,501) d01a
      write(6,500) c01a
      write(6,*) i01a
  500 format(6f12.7)
  501 format(4f18.12)

      stop
      end
