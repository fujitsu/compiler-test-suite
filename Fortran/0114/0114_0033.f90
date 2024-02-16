program main
integer :: a(256)
!$omp parallel do
do i=1,256
  a(i) = fun(i)
enddo
!$omp end parallel do

if( sum(a) .eq. 58368 ) then
print *,'PASS'
else
print *,'NG'
endif

contains

  integer function fun(i)
  j=i+100
  if( mod(i,2) == 0 ) j=j-1
  fun = j
  end function

end 

