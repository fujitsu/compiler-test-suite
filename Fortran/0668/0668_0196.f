      integer int1(10,10)/100*0/,int2(10,10)/100*0/,insum(10,10)/100*0/
      real    real1(10,10)/100*0./,real2(10,10)/100*0./
      do 100 i=1,10
       int1(i,i)=i
       do 110 j=1,10
        if(int1(1,i).ge.int1(2,i)) then
          int2(i,j)=1
          if(int1(3,i).eq.int1(4,i)) then
           real2(i,j)=2.
             if(int1(5,i).eq.int1(6,i)) then
              int2(i,j)=3
             else
              int2(i,j)=4
             endif
          endif
        else
          int2(i,j)=5
        endif
 110   continue
 100  continue
      write(6,*) ' **** loop 1 ***** '
      write(6,1000) int2
      write(6,1002) real2
      call sub1(int1,int2,real1,real2)
      do 200 i=1,10
       do 210 j=1,10
        if(i.lt.3) then
          int2(i,j)=1
        else if(i.lt.5) then
          int2(i,j)=2
        else  if(i.lt.7) then
          int2(i,j)=3
        else
          int2(i,j)=4
        endif
          real2(i,j)=5.
 210   continue
 200  continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int2
      write(6,1002) real2
      call sub1(int1,int2,real1,real2)
      do 300 i=1,10
       do 310 j=1,10
        if(j.lt.3) then
          int2(i,j)=1
        else if(j.lt.5) then
          int2(i,j)=2
        else  if(j.lt.7) then
          int2(i,j)=3
        else
          int2(i,j)=4
        endif
          real2(i,j)=5.
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int2
      write(6,1002) real2
      call sub1(int1,int2,real1,real2)
      do 400 i=1,10
       do 410 j=1,10
        if((j.eq.1).or.(j.eq.10)) then
          int2(i,j)=1
        else
          int2(i,j)=2
        endif
        if((j.gt.1).and.(j.lt.10)) then
          real2(i,j)=3.
        else
          real2(i,j)=4.
        endif
 410   continue
 400  continue
      write(6,*) ' **** loop 4 ***** '
      write(6,1000) int2
      write(6,1002) real2
      call sub1(int1,int2,real1,real2)
      do 500 i=1,10
       do 510 j=1,10
        if((i.eq.1).or.(i.eq.10)) then
          int2(i,j)=1
        else
          int2(i,j)=2
        endif
        if((i.gt.1).and.(i.lt.10)) then
          real2(i,j)=3.
        else
          real2(i,j)=4.
        endif
 510   continue
 500  continue
      write(6,*) ' **** loop 5 ***** '
      write(6,1000) int2
      write(6,1002) real2
      call sub1(int1,int2,real1,real2)
      do 600 i=1,10
       do 610 j=1,10
        if(((j.eq.1).or.(j.eq.10)).or.
     +     ((i.eq.1).or.(i.eq.10))) then
          int2(i,j)=0
        else
          int2(i,j)=1
        endif
        if(((j.gt.1).and.(j.lt.10)) .and.
     +     ((i.gt.1).and.(i.lt.10))) then
          real2(i,j)=2.
         else
          real2(i,j)=3.
       endif
 610   continue
 600  continue
      write(6,*) ' **** loop 6 ***** '
      write(6,1000) int2
      write(6,1002) real2
      call sub1(int1,int2,real1,real2)
      do 700 i=1,10
       do 710 j=1,10
        if(((j.eq.1).or.(i.eq.10)).or.
     +     ((i.eq.1).or.(j.eq.10))) then
          int2(i,j)=0
        else
          int2(i,j)=1
        endif
        if(((j.gt.1).and.(i.lt.10)) .and.
     +     ((i.gt.1).and.(j.lt.10))) then
          real2(i,j)=2.
         else
          real2(i,j)=3.
       endif
 710   continue
 700  continue
      write(6,*) ' **** loop 7 ***** '
      write(6,1000) int2
      write(6,1002) real2
      do 800 i=1,10
       do 810 j=1,10
        if(((j.eq.1).or.(i.eq.10)).or.
     +     ((i.eq.1).or.(j.eq.10))) then
          insum(i,1)=insum(i,1)+1
        endif
        if(((j.gt.1).and.(i.lt.10)) .and.
     +     ((i.gt.1).and.(j.lt.10))) then
          insum(i,10)=insum(i,10)+1
       endif
 810   continue
 800  continue
      write(6,*) ' **** loop 8 ***** '
      write(6,1000) insum
 1000 format(10i7)
 1001 format(10i7)
 1002 format(10f7.2)
      stop
      end
      subroutine sub1(m,n,a,b)
      integer m(10,10),n(10,10)
      real a(10,10),b(10,10)
      do 10 i=1,10
       do 20 j=1,10
        m(i,j)=i+j
        n(i,j)=0
        a(i,j)=mod((i+j),7)
        b(i,j)=0.
   20  continue
   10 continue
      return
      end
