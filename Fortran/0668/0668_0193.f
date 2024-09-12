      integer int1(10,10)/100*1/,int2(10,10)/100*0/
      do 110 i=1,10
       int1(i,i)=i
       do 120 j=1,10
        if((int1(1,i).ge.int1(2,i))
     +  .and.(int1(1,j).lt.int1(2,j))) goto 120
        int2(i,j)=int1(i,j)-j
 120   continue
 110  continue
      write(6,*) ' **** loop 1 ***** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 210 i=1,10
       int1(i,i)=i
       do 220 j=1,10
        if((int1(1,j).lt.int1(2,j))
     +  .and.(int1(1,i).ge.int1(2,i))) goto 220
        int2(i,j)=int1(i,j)-j
 220   continue
 210  continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 300 i=1,10
       k=i
       do 310 j=1,10
        if((k.ge.5).and.(j.lt.5)) int2(i,j)=int1(i,j)*2
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 400 i=1,10
         n=i
       do 410 j=1,10
        if((n.eq.j).and.(int1(i,i).lt.5)) goto 410
         int2(i,j)=mod(int1(i,j),2)
  410  continue
  400 continue
      write(6,*) ' **** loop 4 **** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 510 i=1,10
       int1(i,i)=i
       do 520 j=1,10
        if((int1(1,i).ge.int1(2,i))
     +  .or.(int1(1,j).lt.int1(2,j))) goto 520
        int2(i,j)=int1(i,j)-j
 520   continue
 510  continue
      write(6,*) ' **** loop 5 ***** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 610 i=1,10
       int1(i,i)=i
       do 620 j=1,10
        if((int1(1,j).lt.int1(2,j))
     +  .or.(int1(1,i).ge.int1(2,i))) goto 620
        int2(i,j)=int1(i,j)-j
 620   continue
 610  continue
      write(6,*) ' **** loop 6 ***** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 700 i=1,10
       k=i
       do 710 j=1,10
        if((k.ge.5).or.(j.lt.5)) int2(i,j)=int1(i,j)*2
 710   continue
 700  continue
      write(6,*) ' **** loop 7 ***** '
      write(6,1000) int2
      call sub1(int1,int2)
      do 800 i=1,10
         n=i
       do 810 j=1,10
        if((n.eq.j).or.(int1(i,i).lt.5)) goto 810
         int2(i,j)=mod(int1(i,j),2)
  810  continue
  800 continue
      write(6,*) ' **** loop 8 **** '
      write(6,1000) int2
 1000 format(10i4)
 1001 format(i4)
      stop
      end
      subroutine sub1(m,n)
      integer m(10,10),n(10,10)
      do 10 i=1,10
       do 20 j=1,10
         m(i,j)=i
         n(i,j)=0
 20    continue
 10   continue
      return
      end
