      parameter(n=10,n1=11,n2=12)
      real*4 a4(n,n),b4(n,n),c4(n1,n2)
      data a4/100*2/,b4/100*3/,c4/132*4/

      call sub1(a4,b4,c4,n,n1,n2)
      print *,'## c4 ## ',c4
      end

      subroutine sub1(a4,b4,c4,n,n1,n2)
      real*4 a4(n,n),b4(n,n),c4(n+1,n+2)
      real*8 a8(n,n),b8(n1,n2),c8(n2,n)
      a8=2
      b8=3
      c8=4
      m=2
      do l=m,n
        call sub2(a8,b8,c8,n,n1,n2)
        do j=m+1,n
          do k=m-1,n
            do i=m,n-1
              c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
            enddo
          enddo
        enddo
      enddo
      print *,'## c8 ## ',c8
      return
      end

      subroutine sub2(a8,b8,c8,n,n1,n2)
      real*8 a8(n,n),b8(n1,n2),c8(n2,n)
      m=2
      do j=n2-n1,n-1
        do k=m,n-1
          do i=n1-n,n-1
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      return
      end
