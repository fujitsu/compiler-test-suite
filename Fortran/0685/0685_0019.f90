      integer a(10)
      a=(/1,2,3,1,3,3,2,3,2,2/)
      call sub1(a)
      print *,'pass'
      end

      subroutine sub1(a)
      common /com/ str,i,j
        interface
          integer function ifunc(k)
            integer*4,intent(in) :: k
          end function ifunc
        end interface
        type aa
          sequence
          integer,dimension(10)::x
        end type
        type (aa) str
        integer a(10)
       im1=0
       im2=0
       im3=0
!$omp parallel private(/com/),shared(a)
      do i=1,10
         str%x(i) = a(i) + 1
      enddo
!$omp do reduction (+:im1,im2,im3)
      do j=1,10  
        go to (100,200,300) str%x(j)+ifunc(j)
  100   continue
        im1 = im1 + 1
        goto (1000,2000,3000,4000) im1
  200   continue
        im2 = im2 + 1
        goto (1000,2000,3000,4000) im2
  300   continue
        im3 = im3 + 1
        goto (1000,2000,3000,4000) im3
 1000   continue
 2000   continue
 3000   continue
 4000   continue
      enddo
!$omp enddo
!$omp end parallel
      if (im1/=2) print *,"fail"
      if (im2/=4) print *,"fail"
      if (im3/=4) print *,"fail"
      end

      integer function ifunc(k)
        integer*4,intent(in):: k
        ifunc = -1
      end
