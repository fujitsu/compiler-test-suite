      integer*4 l1(10),l2(10),l3(10)
      integer*4  ia1(8),ia2(8),ib1(8)
      real*8    a(10),b(10),c(10),d(10),e(10)
      data l1/1,2,3,4,5,6,7,8,9,10/
      data l2/1,2,3,4,5,6,7,8,9,10/
      data l3/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/,c/1,1,2,2,3,3,4,4,5,5/
      data e/10,9,8,7,6,5,4,3,2,1/
      do 10 i=1,10
        a(l1(i)) = b(l2(i)) + c(l3(i))
        d(l1(i)) = e(l1(i))
 10   continue
      write(6,*) ' a = ',a
      write(6,*) ' d = ',d
      stop
      end