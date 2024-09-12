      real*4 a1(10,10),b1(10,10),c1(10,10)
      real*4 a2(10,10),b2(10,10),c2(10,10)
      real*4 a3(10,10),b3(10,10),c3(10,10)
      real*4 a4(10,10),b4(10,10),c4(10,10)
      data a1,a2,a3,a4/100*2,100*2,100*2,100*2/
      data b1,b2,b3,b4/100*3,100*3,100*3,100*3/
      data c1,c2,c3,c4/100*4,100*4,100*4,100*4/

      do j=1,10
        do k=1,10
          do i=1,10
            c1(i,j)=c1(i,k)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,c1(5,5)

      do j=1,9
        do k=1,9
          do i=1,9
            c2(i,j)=c2(i,3)+a2(i,k)*b2(k,j)
          enddo
        enddo
      enddo
      print *,c2(5,5)

      do j=1,10
        do k=1,10
          do i=1,10
            c3(1,j)=c3(1,j)+a3(i,k)*b3(k,j)
          enddo
        enddo
      enddo
      print *,c3(5,5)

      do j=1,9
        do k=1,9
          do i=1,9
            c4(i,j)=c4(i,j)+a4(j,k)*b4(k,k)
          enddo
        enddo
      enddo
      print *,c4(5,5)

      do j=1,10
        do k=1,10
          do i=1,10
            c1(i,i)=c1(i,i)+a1(i,i)*b1(i,i)
          enddo
        enddo
      enddo
      print *,c1(5,5)
      end
