      program main
      integer int1(10,10),int2(10,10)/100*0/,iequ(10,10)/100*0/
      logical logic(10)/3*.false.,2*.true.,4*.false.,1*.true./
      common /name/iscom
      equivalence (iequ(1,1),isequ)
      iscom=10000
      isequ=10000
      n=1
      do 100 i=1,10
       int1(i,n)=i
       call sub1(int1(i,n))
       do 110 j=1,10
        if(logic(j)) then
         iequ(i,j)=i*j
         int2(i,j)=iscom
        endif
  110  continue
       n=n+1
  100 continue
      write(6,*) ' ***** loop 1 ***** '
      write(6,*) ' iseq'
      write(6,1001) isequ
      write(6,*) ' ieq(i,j)'
      write(6,1000) iequ
      write(6,*) ' int2(i,j)'
      write(6,1000) int2
      write(6,*) ' iscom'
      write(6,1001) iscom
      iscom=10000
      isequ=10000
      n=1
      do 200 i=1,10
       int1(i,n)=i
       call sub1(int1(i,n))
       do 210 j=1,10
        if(logic(j)) then
         iequ(i,1)=i*j
         int2(i,1)=iscom
        endif
  210  continue
       n=n+1
  200 continue
      write(6,*) ' ***** loop 2 ***** '
      write(6,*) ' isequ'
      write(6,1001) isequ
      write(6,*) ' isequ(i,1)'
      write(6,1000) (iequ(i,1),i=1,10)
      write(6,*) ' iscom'
      write(6,1001) iscom
      write(6,*) ' int2(i,1)'
      write(6,1000) (int2(i,1),i=1,10)
 1000 format(10i7)
 1001 format(i7)
      stop
      end
      subroutine inti(n)
      integer n(10,10)
      do 10 i=1,10
       do 20 j=1,10
       n(i,j)=0
   20  continue
   10 continue
      return
      end
      subroutine sub1(n)
      common /name/m
      m=n
      return
      end
