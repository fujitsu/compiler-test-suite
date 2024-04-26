      program main
      integer(8),parameter::k1=1,k10=10
      complex(8)::sum1(10,1),s,t
      data sum1/10*(210,-210)/
      t = 0
      do j=1,1
         do i=1,10
            t = sum1(i,j)+t
         enddo
      enddo
      s = t
      print *,s
      end program main
