      parameter(n=10)
      real*4 a1(n,n),b1(n,n),c1(n,n)
      real*4 a2(n,n),b2(n,n),c2(n,n)
      data a2/100*2./,b2/100*3./,c2/100*4./
      a2=b2+c2
      do l2=1,10
        do l1=1,10
          a1(l1,l2)=2.
          b1(l1,l2)=3.
          c1(l1,l2)=4.
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

      end
