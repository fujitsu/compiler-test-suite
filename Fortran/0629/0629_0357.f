      real*4 a1(10,10),b1(10,10),c1(10,10,2)
      real*4 a2(10,10),b2(10,10,2,2),c2(10,10,2)
      real*8 r1(10,10),s1(10,10,2,2),t1(10,10)
      real*8 r2(10,10,2,2,3,3,3),s2(10,10,2),t2(10,10)
      data a1/100*2/,b1/100*3/,c1/200*4/
      data a2/100*2/,b2/400*3/,c2/200*4/
      data r1/100*2/,s1/400*3/,t1/100*4/
      data r2/10800*2/,s2/200*3/,t2/100*4/

      do j=1,10
        do k=1,10
          do i=1,10
            c1(i,j,1)=c1(i,j,1)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,'## c1 ## > ',c1

      do j=1,10
        do k=1,10
          do i=1,10
            c2(i,j,2)=c2(i,j,2)+a2(i,k)*b2(k,j,1,1)
          enddo
        enddo
      enddo
      print *,'## c2 ## > ',c2

      do i=1,10
        do j=1,10
          do k=1,10
            t1(i,j)=t1(i,j)+r1(i,k)*s1(k,j,1,1)
          enddo
        enddo
      enddo
      print *,'## t1 ## > ',t1

      do i=1,10
        do j=1,10
          do k=1,10
            t2(i,j)=t2(i,j)+r2(i,k,1,2,3,2,1)*s2(k,j,1)
          enddo
        enddo
      enddo
      print *,'## t2 ## > ',t2
      end
