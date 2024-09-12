      integer i4a(10,10),i4b,   i4c(5)
      real    r4a(100),  r4b,   r4c(10,10)
      data    i4a/100*1/,i4b/1/,i4c/5*2/
      data    r4a/100*3/,r4b/4/,r4c/100*5/
      l = 10
       do  10  i = 1, l
         do  20  j = 2, i
           i4b = i4a(i,j) * i4c(3)
           i4b = i4b * r4b
            if ( i4b .lt. 0 )  i4b = 100
   20    continue
            if ( i4b .gt. 10000 )  i4b = 100
         do  30  k = 1, 10
           r4b = i4a(i,k) * r4c(i,k) - r4c(i,k)
           r4a(k) = r4b + k
            if ( r4a(k) .lt. 0 )  call sub1(r4a,r4b)
           r4b = r4a(k) - i4b
   30    continue
   10  continue
      m = 5
       do  40  i = 1, m
         do  50  j = 1, i
           do  60  k = 1, 10
             i4b = i4a(j,k) * i4c(3)
             i4b = i4a(j,k) * 2
              if ( i4b .lt. 0 )  i4b = 100
             r4b = i4a(j,k) * r4c(j,k) - r4c(j,k) - k
             r4a(k) = r4b - 10000
              if ( r4a(k). lt .0 )  i4a(j,k) = 200
             r4b = r4a(k) - i4b
              if ( r4b .lt. 0 )  call sub2(r4b,i4b)
             r4b = sqrt(r4b) - r4a(k)
   60      continue
   50    continue
   40  continue
      n = 100
       do  70  i = 1, n
         r4a(i) = 1
   70  continue
      ll = 50
       do  80  i = 1, ll, 10
         r4a(10) = r4a(i) + r4a(ll)
         r4a(20) = r4a(i) - r4a(i)
         r4a(30) = r4a(i) * r4a(ll)
         r4a(40) = r4a(i) / r4a(i)
         r4a(50) = r4a(i) **r4a(ll)
   80  continue
      write(6,*) 'no:1(r4a) ',r4a
      write(6,*) 'no:2(r4b) ',r4b
      stop
      end
      subroutine    sub1(r4a,r4b)
      real          r4a(100),r4b,r4x(100),r4y
       do  110  i = 1, 100
         r4x(i) = r4a(i)
  110  continue
      r4y = r4b
      h = 100
       do  120  i = 1, h, 10
         r4a(i) = r4x(i) * 2 + 100
         r4a(i) = r4a(i) * 1.5 +  r4x(i)
  120  continue
      r4y = r4y * 3 / 1.8 * 0.98
      r4b = r4y / 2
       if ( r4b .gt. 0 )  r4b = 1000
      return
      end
      subroutine    sub2(r4b,i4b)
      integer  i4b,i4z
      integer  i4aa,   i4bb(9),  i4cc(9),  i4dd(9),  i4ee(9)
      real     r4b,r4z
      real     r4aa,   r4bb(9),  r4cc(9),  r4dd(9),  r4ee(9)
      data     i4aa/0/,i4bb/9*1/,i4cc/9*2/,i4dd/9*3/,i4ee/9*4/
      data     r4aa/4/,r4bb/9*3/,r4cc/9*2/,r4dd/9*1/,r4ee/9*0/
      i4z = i4b
      r4z = r4b
       do  210  i = 1, 9, 2
         do  210  j = 9, 1, -2
           i4z = i4aa + r4ee(j) + i4bb(j) + i4z
           i4b = i4z + r4cc(j) - r4dd(7)
           r4z = i4cc(j) * r4bb(2)
           r4b = i4z + r4cc(3) * r4aa + i4dd(j)
           r4b = r4b / r4z + i4ee(j)
  210  continue
      return
      end
