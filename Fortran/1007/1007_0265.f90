module xx
  type x
    integer a, b, c, d
  end type
end module

program main
use xx
type(x) sum

j = 0
!$omp parallel do private(sum)
do i=1, 100
  call sub(sum, i)
!$omp atomic
  j = j+sum%d
end do
!$omp end parallel do

k = 0
do i=1, 100
  k = k+(i*(i+1))/2
end do

if(j .ne. k) then
  print *, 'NG', j, k
else
  print *, 'pass'
endif

end

subroutine sub(sum, i)
use xx
type(x) sum

sum%a = i
sum%b = -i
sum%c = (i*(i+1))/2
sum%d = sum%a*2+sum%b*2+sum%c
end

