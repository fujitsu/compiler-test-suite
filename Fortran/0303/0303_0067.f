      parameter(n1=5,n2=10,n3=10,n4=10)
      real * 8 rhs(n1,n2,n3,n4)
      r=0
      do k = 1, n4
       do j = 1, n3
         do i = 1, n2
           do m = 1, 5
             r=r+1
             rhs(m,i,j,k) = r
           end do
          end do
        end do
      end do
      call sub(rhs,n1,n2,n3,n4)
      print *, ' end '
      stop
      end
      subroutine sub(rhs,n1,n2,n3,n4)
      real * 8 rhs(n1,n2,n3,n4)
      real * 8 add,rms_local(n1)
      do i=1,n1
        rms_local(i) = 0
      enddo
      do k = 1, n4
       do j = 1, n3
         do i = 1, n2
           do m = 1, 5
             add = rhs(m,i,j,k)
             rms_local(m) = rms_local(m) + add*add
           end do
          end do
        end do
      end do
      print *,rms_local
      return
      end
