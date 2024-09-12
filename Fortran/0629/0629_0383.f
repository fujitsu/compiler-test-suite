      real*4 a1(10,10),b1(10,10),c1(10,10)
      real*4 a2(10,10),b2(10,10),c2(10,10)
      real*4 a3(10,10),b3(10,10),c3(10,10)
      real*4 a4(10,10),b4(10,10),c4(10,10)
      data a1,a2,a3,a4/100*2,100*2,100*2,100*2/
      data b1,b2,b3,b4/100*3,100*3,100*3,100*3/
      data c1,c2,c3,c4/100*4,100*4,100*4,100*4/

      do j=1,9
        do k=1,9
          do i=1,9
            c1(i,j)=c1(i,j)+a1(i,k+1)*b1(k+1,j)
          enddo
        enddo
      enddo
      print *,c1(1,1)

      do j=2,10
        do k=2,10
          do i=2,10
            c2(i-1,j)=c2(i-1,j)+a2(i-1,k)*b2(k,j)
          enddo
        enddo
      enddo
      print *,c2(1,1)

      do i=1,10
        do j=1,10
          do k=1,10
            c3(i,j*1) = c3(i,j*1)+a3(i,k)*b3(k,j*1)
          enddo
        enddo
      enddo
      print *,c3

      do i=1,5
        do j=1,5
          do k=1,5
            c3(i,j*2) = c3(i,j*2)+a3(i,k)*b3(k,j*2)
          enddo
        enddo
      enddo
      print *,c3(1,1)

      do i=1,8
        do j=1,8
          do k=1,8
            c4(i,j) = c4(i,j)+a4(i,k/1)*b4(k/1,j)
          enddo
        enddo
      enddo
      print *,c4(1,1)

      do i=1,10
        do j=1,10
          do k=1,10
            c1(i,j) = c1(i,j)+a1(i,k**0)*b1(k**0,j)
          enddo
        enddo
      enddo
      print *,c1(1,1)

      do i=1,10
        do j=1,10
          do k=1,10
            c2(i,j) = c2(i,j)+a1(i,k**1)*b1(k**1,j)
          enddo
        enddo
      enddo
      print *,c2(1,1)

      end
