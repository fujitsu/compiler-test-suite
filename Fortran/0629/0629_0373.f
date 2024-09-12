      real*4 a4(10,10),b4(10,10),c4(10,10)
      real*8 a8(10,10),b8(10,10),c8(10,10)
      data a4/20*1,20*2,20*3,20*1,20*2/
      data b4/20*2,20*3,20*1,20*2,20*3/
      data c4/20*3,20*1,20*2,20*3,20*1/
      data a8/20*1,20*2,20*3,20*1,20*2/
      data b8/20*2,20*3,20*1,20*2,20*3/
      data c8/20*3,20*1,20*2,20*3,20*1/
      integer n1,n2,n3,n5,n8,n9,n10

      call sub(n1,n2,n3,n5,n8,n9,n10)
      do j=1,8
        do i=1,8
          c4(i,j)=5
          do k=1,8
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=2,10
        do i=1,9
          c8(i,j)=5
          do k=3,8
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8

      do l=n1,n5
        do i=1,n10
          do j=n1,9
            c4(i,j)=5
            do k=2,10
              c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
            enddo
          enddo
        enddo
        do i=n2,n10
          do j=n3,n9
            c8(i,j)=5
            do k=n5,n8
              c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
            enddo
          enddo
        enddo
      enddo
      print *,c4
      print *,c8  

      do l=1,n5
        do j=n1,n10
          do k=n1,n9
            do i=n2,n10
              c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
            enddo
          enddo
        enddo
        do j=n2,10
          do k=n3,n9
            do i=4,n8
              c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
            enddo
          enddo
        enddo
      enddo
      print *,c4
      print *,c8      
      end

      subroutine sub(n1,n2,n3,n5,n8,n9,n10)
      n1=1
      n2=2
      n3=3
      n5=5
      n8=8
      n9=9
      n10=10
      return
      end
