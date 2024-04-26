      program main
      parameter(n1=10,n2=10,n3=10)
      real * 8 x(n1,n2,n3)
      n=0
      do k=1,n3
      do j=1,n2
      do i=1,n1
       x(i,j,k) = n
       n=n+1
      enddo
      enddo
      enddo
      call sub(x,n1,n2,n3,1,1,n1,1,n2)
      print *,x
      stop
      end
      subroutine sub(x,n1,n2,n3,nn,lL,lU,kL,kU)
      real * 8 x(n1,n2,n3)
      integer * 4 nn,j1,j,k,lL,lU,kL,kU

      j = lU
      j1 = j - nn*1
      do l = lL, lU
      do k = kL, kU
          x(j1,k,l) = x(j1,k,l) + k
      end do
      end do
    return
  end 

