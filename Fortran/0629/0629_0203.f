      program main
      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ i1,i2,j1,j2
!$omp threadprivate(/com/)
      integer(4),dimension(j1-10:j1+10,j2-5:j2+5)::b

      do j2 = j2-5 ,j2+5 ,1
         j3=j1
         do j3 = j3-10,j3+10,1
            b(j3,j2)=j2*10+j3
         enddo
      enddo
      print *,b
      end subroutine sub

      block data
      common /com/ i1,i2,j1,j2
!$omp threadprivate(/com/)
      data i1 /10/
      data i2 / 5/
      data j1 /10/
      data j2 / 5/
      end block data
