type x
  integer a, b, c, d
end type

type(x) sum

j = 0
!$omp parallel do private(sum)
do i=1, 100
  sum%a = i
  sum%b = -i
  sum%c = (i*(i+1))/2
  sum%d = sum%a*2+sum%b*2+sum%c
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

