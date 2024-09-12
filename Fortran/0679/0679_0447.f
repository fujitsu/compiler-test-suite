      program main
      data n/10/
      logical*4  l1(10),l2(10),lv1,lv2
      logical*4  and
      integer*4  i1(10)
      real*4     r1(10),r2(11)
      data l1/10*.false./,lv1/.true./,lv2/.true./
      data l2/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./
      data r1/1,2,3,4,5,6,7,8,9,10/
      data r2/1,2,3,4,5,6,7,8,9,10,11/

      and(lv1,lv2) = lv1 .and. lv2
      do 10 i=1,n
        l1(i) = and(lv1,lv2).or. .not.l2(i)
        i1(i) = int(sin(r1(i)))
        j = n - i + 1
        r2(j) = r2(j + 1) + float(j)
  10  continue
      write(6,*) l1,i1,r2
      stop
      end
