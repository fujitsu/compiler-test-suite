      real a1(10,10)/100*2/,b1(10,10)/100*3/,c1(10,10)/100*4/
      real a2(10,10)/100*2/,b2(10,10)/100*3/,c2(10,10)/100*4/
      real a3(10,10)/100*2/,b3(10,10)/100*3/,c3(10,10)/100*4/
      x=func1(a1,b1,c1)
      y=func2(a2,b2,c2)
      z=func3(a3,b3,c3)
      end

      real function func1(a1,b1,c1)
      real a1(10,10),b1(10,10),c1(10,10)
      do i=1,10
        do j=1,10
          a1(j,i)=j
          b1(j,i)=i
          c1(j,i)=j+i
        enddo
      enddo
      do i=1,10
        do j=1,10
          do k=1,10
            a1(i,j)=a1(i,j)+b1(i,k)*c1(k,j)
          enddo
        enddo
      enddo
      do i=1,10
        do j=1,10
          func1=a1(j,i)
          print *,' - a1','(',j,',',i,') ',func1
        enddo
      enddo
      end function func1
      real function func2(a2,b2,c2)
      real a2(10,10),b2(10,10),c2(10,10)
      do i=1,10
        do j=1,10
          do k=1,10
            a2(i,j)=a2(i,j)+b2(i,k)*c2(k,j)
          enddo
        enddo
      enddo
      do i=1,10
        do j=1,10
          func2=a2(j,i)
          print *,' - a2','(',j,',',i,') ',func2
        enddo
      enddo
      end function func2
      real function func3(a3,b3,c3)
      real a3(10,10),b3(10,10),c3(10,10)
      a3=5.
      b3=4.
      c3=3.
      do i=1,10
        do j=1,10
          do k=1,10
            a3(i,j)=a3(i,j)+b3(i,k)*c3(k,j)
          enddo
        enddo
      enddo
      do i=1,10
        do j=1,10
          func3=a3(j,i)
          print *,' - a3','(',j,',',i,') ',func3
        enddo
      enddo
      end function func3

