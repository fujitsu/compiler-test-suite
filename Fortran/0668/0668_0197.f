      integer int1(10,10)/100*0/,int2(10,10)/100*0/,insum(10,10)/100*0/
      real    real2(10,10)/100*0./
      do 100 i=1,10
       do 110 j=1,10
        if(i.gt.1) then
         if(i.lt.10) then
          if(i.ne.5) then
           int2(i,j)=1
          endif
           int1(i,j)=2
         endif
           real2(i,j)=3.
        else
         int2(i,j)=0
        endif
 110   continue
 100  continue
      write(6,*) ' **** loop 1 ***** '
      write(6,1000) int1
      write(6,1000) int2
      write(6,1001) real2
      call sub1(int1,int2,real2)
      do 200 i=1,10
       do 210 j=1,10
        if((i.eq.1).or.(i.eq.10)) then
          int2(i,j)=1
        else if((i.le.2).or.(i.ge.9)) then
          int2(i,j)=2
        else if((i.le.3).or.(i.ge.8)) then
          int2(i,j)=3
        else if((i.le.4).or.(i.ge.7)) then
          int2(i,j)=4
          goto 210
        else
          int2(i,j)=5
        endif
          real2(i,j)=6.
 210   continue
 200  continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int2
      write(6,1001) real2
      call sub1(int1,int2,real2)
      do 300 i=1,10
       do 310 j=1,10
        if((j.eq.1).or.(j.eq.10)) then
          int2(i,j)=1
        else if((j.le.2).or.(j.ge.9)) then
          int2(i,j)=2
        else if((j.le.3).or.(j.ge.8)) then
          int2(i,j)=3
        else if((j.le.4).or.(j.ge.7)) then
          int2(i,j)=4
          goto 310
        else
          int2(i,j)=5
        endif
          real2(i,j)=6.
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int2
      write(6,1001) real2
      call sub1(int1,int2,real2)
      do 400 i=1,10
       do 410 j=1,10
        if((int1(i,j).lt.3).and.(int1(j,i).lt.3)) then
          int2(i,j)=1
        else
          int2(i,j)=2
          goto 410
        endif
        if((int1(i,j).lt.2).or.(int1(j,i).lt.2)) then
          real2(i,j)=3.
          goto 410
        else
          real2(i,j)=4.
        endif
          int2(i,j)=5
 410   continue
 400  continue
      write(6,*) ' **** loop 4 ***** '
      write(6,1000) int2
      write(6,1001) real2
      call sub1(int1,int2,real2)
      do 500 i=1,10
       do 510 j=1,10
        if((int1(i,j).lt.3).and.(int1(j,i).lt.3)) then
          int2(i,j)=1
        else
          int2(i,j)=2
          goto 510
        endif
        if((int1(i,j).lt.2).or.(int1(j,i).lt.2)) then
          real2(i,j)=3.
          goto 510
        else
          real2(i,j)=4.
        endif
          insum(1,j)=insum(1,j)+1
 510   continue
 500  continue
      write(6,*) ' **** loop 5 ***** '
      write(6,1000) int2
      write(6,1001) real2
      write(6,1000) (insum(1,j),j=1,10)
 1000 format(10i7)
 1001 format(10f7.2)
      stop
      end
      subroutine sub1(m,n,a)
      integer m(10,10),n(10,10)
      real a(10,10)
      do 10 i=1,10
       do 20 j=1,10
        m(i,j)=mod((i*j),4)
        n(i,j)=0
        a(i,j)=0.
   20  continue
   10 continue
      return
      end
