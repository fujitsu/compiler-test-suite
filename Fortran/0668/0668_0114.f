      program main

      integer*4  i01a(20)
      real*8     q01a(20),q01b(20),q01c(20)
      complex*16 cq01a(20),cq01b(20),cq01c(20)
      logical*1  l01a(20),l01b(20)
      data       i01a/10*2,10*3/
      data       q01a/20*0/,q01b/20*2.5/,q01c/20*1.1/
      data       cq01a/20*1/,cq01b/20*8./,cq01c/20*3./
      data       l01a/20*.true./,l01b/10*.false.,10*.true./

      write(6,*) '**** ****'

      do 10 i=1,20
        q01a(i)=q01b(i)+q01c(i)
        q01a(i)=q01a(i)-q01c(i)
        q01a(i)=q01a(i)*q01c(i)
        q01a(i)=q01a(i)/q01c(i)
   10 continue
      write(6,*) ' '
      write(6,*) '##check p1##'
      write(6,100) q01a
  100 format(5f16.10)

      do 20 i=1,20
        q01a(i)=q01b(i)+q01c(1)
        q01a(i)=q01a(i)-q01c(1)
        q01a(i)=q01a(i)*q01c(1)
        q01a(i)=q01a(i)/q01c(1)
   20 continue
      write(6,*) ' '
      write(6,*) '##check p2##'
      write(6,100) q01a
  200 format(5f16.10)

      do 30 i=1,20
        cq01a(i)=cq01b(i)+cq01c(i)
        cq01a(i)=cq01a(i)-cq01c(i)
        cq01a(i)=cq01a(i)*cq01c(i)
        cq01a(i)=cq01a(i)/cq01c(i)
   30 continue
      write(6,*) ' '
      write(6,*) '##check p3##'
      write(6,300) cq01a
  300 format(f10.7)

      do 40 i=1,20
        cq01a(i)=cq01b(1)+cq01c(i)
        cq01a(i)=cq01a(1)-cq01c(i)
        cq01a(i)=cq01a(1)*cq01c(i)
        cq01a(i)=cq01a(1)/cq01c(i)
   40 continue
      write(6,*) ' '
      write(6,*) '##check p4##'
      write(6,400) cq01a
  400 format(f10.7)

      do 50 i=1,20
        l01a(i)=l01b(i)
   50 continue
      write(6,*) ' '
      write(6,*) '##check p5##'
      write(6,*) l01a

      do 60 i=1,20
        l01a(i)=l01b(1)
   60 continue
      write(6,*) ' '
      write(6,*) '##check p6##'
      write(6,*) l01a

      do 70 i=1,20
        q01b(i)=q01c(i)
        q01a(i)=(q01b(i)+q01c(i))*i01a(i)
        cq01a(i)=cq01a(i)-q01c(i)
        cq01a(i)=q01a(i)*q01c(i)
   70 continue
      write(6,*) ' '
      write(6,*) '##check p7##'
      write(6,500) q01b
      write(6,501) q01a
      write(6,500) cq01a
  500 format(6f12.7)
  501 format(4f18.12)

      stop
      end
