      program main
      inn=1024
      call sub1(inn)
      call sub2
      call sub3
      stop
      end
      subroutine sub1(inn)
      real*4     r4a(1024),r4b(1024)
      real*8     d8a(1024),d8b(1024)
      integer*4  i4a(1024),i4b(1024)
      logical*4  l4a(1024)
      data       l4a/1024*.false./
      do 10 i=1,1024
      r4a(i)=1.0
      d8a(i)=1.d0
10    i4a(i)=1
      do 20 i=1,inn-1,2
        l4a(i)=.true.
20    continue
      do 21 i=1,inn
        if (l4a(i)) then
         r4b(i)=r4a(i)
         else
         r4b(i)=0.0
        endif
21    continue
      write(6,91) r4b(1),r4b(100),r4b(500),r4b(1000),r4b(1024)
      do 22 i=1,inn
        if (l4a(i)) then
         d8b(i)=d8a(i)
         else
         d8b(i)=0.d0
        endif
22    continue
      write(6,92) d8b(1),d8b(100),d8b(500),d8b(1000),d8b(1024)
      do 23 i=1,inn
        if (l4a(i)) then
         i4b(i)=i4a(i)
         else
         i4b(i)=0
        endif
 23   continue
      write(6,90) i4b(1),i4b(100),i4b(500),i4b(1000),i4b(1024)
 90   format(5(i10))
 91   format(5(f10.2))
 92   format(5(f12.4))
      return
      end
      subroutine sub2
      real ra(100)/30*1.0,40*3.0,30*2.0/
      real rb(100)/100*1.0/
      real rc(100)/50*0.0,50*2.0/
      real rd(100)/30*1.0,40*3.0,30*2.0/
      real re(100)/50*0.0,50*2.0/
      real rf(2000)/500*0.0,1000*1.0,500*2.0/
      real rg(2000)/500*0.0,1000*1.0,500*2.0/
      rx=0.0
      ij=0
      ik=0
      do 10 i=1,100,3
        if (ra(i).gt.rx) then
          rx=ra(i)
          ij=i*2
          ik=i+1
        endif
   10 continue
      write(6,*) '*** sub2 result ****'
      write(6,*) rx,ik,ij
      rx=0.0
      do 11 i=1,100
        if (rc(i).gt.1.0) then
          rx=min(rx,rb(i))
        endif
   11 continue
      write(6,*) rx
      rx=0.0
      ij=0
      ik=0
      do 12 i=1,2000,2
        if (rf(i).gt.1.0) then
          if (rg(i).gt.rx) then
            rx=rg(i)
            ij=i*2
            ik=i+1
          endif
        endif
   12 continue
      write(6,*) rx,ij,ik
      rx=0.0
      ij=0
      ik=0
      do 13 i=1,100,3
        ry=rd(i)-rx
        if (ry.gt.0) then
          rx=rd(i)
          ik=i+1
        endif
   13 continue
      write(6,*) rx,ik
      rx=0.0
      ij=0
      ik=0
      do 14 i=1,100,3
        ry=re(i)-rx
        if (ry.lt.0) then
          rx=re(i)
          ik=i+1
        endif
   14 continue
      write(6,*) rx,ik,ij,ry
      return
      end
      subroutine sub3
      real ra(4096),rb(4096)
      integer ia(4096)
      logical la(4096)
      data ia/1024*5,1024*0,1024*3,1024*2/
      data la/1024*.false.,1024*.true.,1024*.false.,1024*.true./
      inn=4096
      do 10 i=1,inn
 10   ra(i)=0.0
      do 11 i=1,4096
        rb(i)=0.0
        if (ia(i).gt.3) then
         rb(i)=1.0
        endif
 11   continue
      write(6,*) '*** sub3 result ****'
      write(6,1000) rb(1),rb(100),rb(1000),rb(2000),rb(4096)
 1000 format(f10.5)
      do  12 i=1,4096
        rb(i)=0.0
        if (la(i)) then
        if (ia(i).lt.3) then
         rb(i)=1.0
        endif
        endif
 12   continue
      write(6,2000) rb(1),rb(100),rb(1000),rb(2000),rb(4096)
 2000 format(f10.5)
      return
      end
