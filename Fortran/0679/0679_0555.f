      program main
      real a(10),b(10),c(10),d(10)
      logical ls1,m1(10)
      data a/1,2,3,4,5,6,7,8,9,10/,b/2,3,4,5,6,7,8,9,10,11/
      data c/10*3./,d/10*4./
      data m1/5*.false.,5*.true./,k/0/

      do 10 i=1,10
        s1 = a(i)*b(i)
        c(i) = c(i+k)
        if(m1(i)) then
          s1 = a(i) - b(i)
        endif
  10  continue
      write(6,*) ' i = ',i,' s1 = ',s1

      do 20 i=1,10
        s1 = a(i)*b(i)
        c(i) = c(i+k)
        if(.not.m1(i)) then
          s1 = a(i) - b(i)
        endif
  20  continue
      write(6,*) ' i = ',i,' s1 = ',s1

      do 30 i=1,10
        ls1 = a(i).gt.d(i)
        c(i) = c(i+k)
        if(m1(i)) then
          ls1 = a(i) .lt. d(i)
        endif
  30  continue
      write(6,*) ' i = ',i,' ls1 = ',ls1

      do 40 i=1,10
        ls1 = a(i).gt.d(i)
        c(i) = c(i+k)
        if(.not.m1(i)) then
          ls1 = a(i) .lt. d(i)
        endif
  40  continue
      write(6,*) ' i = ',i,' ls1 = ',ls1
      stop
      end
