      parameter(n=10)
      real*4 a1(n,n),b1(n,n),c1(n,n)
      real*4 a2(n,n)
      real*4 a3(n,n),b3(n,n),c3(n,n)
      data a1/100*2./,b1/100*3./,c1/100*4./
      data a3/100*2./,b3/100*3./,c3/100*4./
      call sub(a2)
      do l2=1,10
        do l1=1,10
          a3(l1,l2)=b3(l1,l2)+c3(l1,l2)
        enddo
      enddo
      do j=1,10
        do k=1,10
          do i=1,10
            c1(i,j)=c1(i,j)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,'c1 = ',c1
      print *,'a2 = ',a2
      print *,'a3 = ',a3
      end
      subroutine sub(a2)
      real*4 a2(10,10)
      a2=2.
      return
      end

