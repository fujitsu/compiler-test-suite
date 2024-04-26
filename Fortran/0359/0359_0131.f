      real*4 x(10),y(10)/1,2,3,4,1,2,3,4,1,2/
      real*4 a1(10)/10*2/,b1(10)/10*3/,r4
      real*4 c1(10)/5,6,7,8,9,10,1,2,3,4/
      k = 3
      i = 2
      do j=1,10
         x(j) = y(j) + 2
         a1(i) = a1(i) + b1(3)+c1(j)
      enddo
      write(6,*) a1(2),x

      do j=1,10
         a1(i) = a1(i) + b1(j)-c1(k)
         x(j) = y(j) + 2
      enddo
      write(6,*) a1(2),x

      r4 = 0
      do j=1,10
         x(j) = y(j) + 5
         r4 = r4 + b1(j)-c1(k)
      enddo
      write(6,*) r4,x

      r4 = 0
      do j=1,10
         x(j) = y(j) + 1
         r4 = r4 + b1(j)-c1(k)
      enddo
      write(6,*) r4,x
      end
