      real*4 a1(10,10,10),b1(10,10,10,2),c1(10,10)
      real*4 a2(10,10,2,3,7),b2(10,10,2,2,6,6),c2(10,10,2,2)
      real*4 a3(5,5,5,5,5,5,5),b3(10,11),c3(10,10,3,3,3,3)
      real*8 t1(10,11,10)
      real*8 t2(10,10,2,10,2)
      real*8 r3(11,13),s3(10,11,12),t3(12,10,7,6,5,4,3)
      data a1/1000*2/,b1/2000*3/,c1/100*4/
      data a2/4200*2/,b2/14400*3/,c2/400*4/
      data a3/78125*2/,b3/110*3/,c3/8100*4/
      data t1/1100*4/
      data t2/4000*4/
      data r3/143*2/,s3/1320*3/,t3/302400*4/
      integer n1,n2,n3,n5,n9,n10

      call sub(n1,n2,n3,n5,n9,n10)
      do j=n2,n9
        do k=n2,n9
          do i=n2,n9
            c1(i,j)=c1(i,j)+a1(i,k,i)*b1(k,j,i,2)
          enddo
        enddo
      enddo
      print *,'## c1(2,2) ## ',c1(2,2)

      do j=n1,4
        do k=n1,5
          do i=n1,6
            c1(i,j)=c1(i,j)+a2(i,k,1,1,j)*b2(k,j,1,1,j,i)
          enddo
        enddo
      enddo
      print *,'## c1(3,3) ## ',c1(3,3)

      do j=1,n5
        do k=1,n5
          do i=1,n5
            c1(i,j)=c1(i,j)+a3(i,k,2,i,2,i,2)*b3(k,j)
          enddo
        enddo
      enddo
      print *,'## c1(4,4) ## ',c1(4,4)

      do i=n2,n9
        do j=n2,n9
          do k=n2,n9
            t1(i,j,k)=t1(i,j,k)+r3(i,k)*s3(k,j,2)
          enddo
        enddo
      enddo
      print *,'## t1(2,2,2) ## ',t1(2,2,2)

      do i=n2,n9
        do j=n2,n9
          do k=n2,n9
            c2(i,j,1,2)=c2(i,j,2,1)+a1(i,k,1)*b3(k,j)
          enddo
        enddo
      enddo
      print *,'## c2(3,3,2,2) ## ',c2(3,3,2,2)

      do i=n2,n9
        do k=n3,n9
          do j=n3,n10
            t2(i,j,2,k,2)=t2(i,j,2,1,2)+r3(i,k)*s3(k,j,1)
          enddo
        enddo
      enddo
      print *,'## t2(10,9,1,1,1) ## ',t2(10,9,1,1,1)

      do k=n3,n10
        do j=n2,n9
          do i=1,10
            c3(i,j,1,2,2,2)=c3(i,j,2,2,2,2)+a1(i,k,2)*b3(k,j)
          enddo
        enddo
      enddo
      print *,'## c3(1,2,1,2,2,2) ## ',c3(1,2,1,2,2,2)

      do k=1,10
        do j=1,10
          do i=n2,n9
            t3(i,j,5,4,3,2,1)=t3(i,j,5,4,3,2,n1)+r3(i,k)*s3(k,j,2)
          enddo
        enddo
      enddo
      print *,'## t3(10,10,5,4,3,2,1) ## ',t3(10,10,5,4,3,2,1)
      end

      subroutine sub(n1,n2,n3,n5,n9,n10)
      n1=1
      n2=2
      n3=3
      n5=5
      n9=9
      n10=10
      return
      end
