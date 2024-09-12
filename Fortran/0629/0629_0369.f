      real*4 a1(10,10,2),b1(10,10,2,2),c1(10,10)
      real*4 a2(10,10,2,3,3),b2(10,10,2,3,4,5),c2(10,10,2,2)
      real*4 a3(12,11,2,3,4,5,4),b3(10,11),c3(10,10,3,3,3,3)
      real*8 r1(10,10,2,2),s1(12,10,3,3,3),t1(10,11,2)
      real*8 r2(10,10,2,2,3,3),s2(10,10,2,3,3,3,3),t2(10,10,2,2,2)
      real*8 r3(11,13),s3(10,11,12),t3(12,10,7,6,5,4,3)
      data a1/200*2/,b1/400*3/,c1/100*4/
      data a2/1800*2/,b2/12000*3/,c2/400*4/
      data a3/63360*2/,b3/110*3/,c3/8100*4/
      data r1/400*2/,s1/3240*3/,t1/220*4/
      data r2/3600*2/,s2/16200*3/,t2/800*4/
      data r3/143*2/,s3/1320*3/,t3/302400*4/
      data n1/2/,n2/9/,n3/3/,n4/10/

      call sub(n1,n2,n3,n4)

      do j=n1,n2
        do k=n1,n2
          do i=n1,n2
            c1(i,j)=c1(i,j)+a1(i,k,2)*b1(k,j,1,2)
          enddo
        enddo
      enddo
      print *,'## c1 ## ',c1

      do i=n1,n2
        do j=n1,n2
          do k=n1,n2
            t1(i,j,1)=t1(i,j,1)+r1(i,k,1,2)*s1(k,j,2,2,2)
          enddo
        enddo
      enddo
      print *,'## t1 ## ',t1

      do i=n1,n2
        do j=n1,n2
          do k=n1,n2
            c2(i,j,2,2)=c2(i,j,2,2)+a2(i,k,1,2,2)*b2(k,j,1,1,2,2)
          enddo
        enddo
      enddo
      print *,'## c2 ## ',c2

      do i=n1,n2
        do k=n3,n2
          do j=n3,n4
            t2(i,j,2,1,2)=t2(i,j,2,1,2)+r2(i,k,2,1,1,1)*
     1      s2(k,j,2,1,1,1,1)
          enddo
        enddo
      enddo
      print *,'## t2(10,9,1,1,1) ## ',t2(10,9,1,1,1)

      do k=n3,n4
        do j=n1,n2
          do i=1,10
            c3(i,j,2,2,2,2)=c3(i,j,2,2,2,2)+a3(i,k,2,1,2,1,2)*b3(k,j)
          enddo
        enddo
      enddo
      print *,'## c3(1,2,3,1,2,3) ## ',c3(1,2,3,1,2,3)

      do k=1,10
        do j=1,10
          do i=n1,n2
            t3(i,j,5,4,3,2,1)=t3(i,j,5,4,3,2,1)+r3(i,k)*s3(k,j,2)
          enddo
        enddo
      enddo
      print *,'## t3(10,10,5,4,3,2,1) ## ',t3(10,10,5,4,3,2,1)
      end

      subroutine sub(n1,n2,n3,n4)
      n1=2
      n2=9
      n3=3
      n4=10
      return
      end
