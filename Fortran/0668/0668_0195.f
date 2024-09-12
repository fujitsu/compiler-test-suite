      integer int1(10,10)/100*0/,int2(10,10)/100*0/,insum(10,10)/100*0/
      real    real1(10,10)/100*0./
      do 100 i=1,10
       int1(i,i)=i
       do 110 j=1,10
        if(int1(1,i).ge.int1(2,i)) then
          int2(i,j)=1
          if(int1(i,j).eq.int1(j,j)) then
           real1(i,j)=2
             if(int1(3,i).eq.int1(4,i)) then
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
      write(6,1002) real1
      call sub1(int1,int2,real1)
      do 200 i=1,10
       int1(i,i)=i
       do 210 j=1,10
        if(int1(1,j).le.int1(j,i)) then
          int2(i,j)=1
          if(int1(i,i).eq.int1(i,1)) then
           real1(i,j)=2
             if(int1(i,j).eq.int1(j,j)) then
              int2(i,j)=3
             else
              int2(i,j)=4
             endif
          endif
        else
          int2(i,j)=5
        endif
 210   continue
 200  continue
      write(6,*) ' **** loop 2 ***** '
      write(6,1000) int2
      write(6,1002) real1
      call sub1(int1,int2,real1)
      do 300 i=1,10
       k=mod(i,5)
       do 310 j=1,10
        if(k.ge.1) then
          int2(i,j)=1
          if(k.lt.j) then
           real1(i,j)=2
             if(k.eq.3) then
              int2(i,j)=3
             else
              int2(i,j)=4
             endif
          endif
        else
          int2(i,j)=5
        endif
 310   continue
 300  continue
      write(6,*) ' **** loop 3 ***** '
      write(6,1000) int2
      write(6,1002) real1
      call sub1(int1,int2,real1)
      do 400 i=1,10
       k=mod(i,3)
       do 410 j=1,10
        if(i.le.j) then
          int2(i,j)=1
          if(k.eq.0) then
           real1(i,j)=2
             if(j.le.5) then
              int2(i,j)=3
             else
              int2(i,j)=4
             endif
          endif
        else
          int2(i,j)=5
        endif
 410   continue
 400  continue
      write(6,*) ' **** loop 4 ***** '
      write(6,1000) int2
      write(6,1002) real1
      call sub1(int1,int2,real1)
       nsum=1
       do 500 j=1,10
        do 510 i=1,10
         if((int1(i,j)).le.int1(j,i)) then
           nsum=nsum+1
         else
           insum(10,10)=insum(10,10)+1
         endif
  510   continue
  500  continue
      write(6,*) ' **** loop 5 **** '
      write(6,1001) insum(10,10)
      write(6,1001) nsum
 1000 format(10i7)
 1001 format(10i7)
 1002 format(10f7.3)
      stop
      end
      subroutine sub1(m,n,a)
      integer m(10,10),n(10,10)
      real a(10,10)
      do 10 i=1,10
       do 20 j=1,10
        m(i,j)=mod((i*j),23)
        n(i,j)=0
        a(i,j)=0.
   20  continue
   10 continue
      return
      end
