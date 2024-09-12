subroutine sub
integer a
a=100
!$omp do lastprivate(a) firstprivate(a)
  do i=1,1
    if (a /= 100) print *,1
    a = 200
  end do
if (a /= 200) print *,2
end

integer :: a=100
!$omp do lastprivate(a) firstprivate(a)
  do i=1,1
    if (a /= 100) print *,1
    a = 200
  end do
if (a /= 200) print *,2
call sub
print *,'pass'
end
