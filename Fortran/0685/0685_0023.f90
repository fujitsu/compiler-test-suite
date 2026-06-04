      common /com/ y,i
      integer,dimension(10)::c=(/0,1,2,3,4,5,6,7,8,9/)
      type yyy
       sequence
        integer,dimension(10)::a
        integer :: k
      endtype
      type(yyy) y
      type zzz
        integer,dimension(10)::b=(/1,2,3,4,5,6,7,8,9,10/)
      end type
      type(zzz) z
      y%k=10
      y%a=1
!$omp parallel private(/com/)
      y%k=1
      do i=1,10
        y%a(i) = c(i)
      enddo

!$omp do
      do i=1,10
        call sub(y%a(z%b(i))+y%k,i)
      enddo
!$omp enddo
!$omp end parallel
!$    if (y%k/=10) print *,"fail"
!$    if (any(y%a/=(/1,1,1,1,1,1,1,1,1,1/))) print *,"fail"
      print *,'pass'
      end

        subroutine sub(a,j)
        integer a
        if (a /= j) print *,"fail"
        end subroutine
