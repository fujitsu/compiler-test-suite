subroutine s
integer:: a(3)
a(3)=3
!$omp parallel private(a)
a=3
!$omp end parallel
a(3)=3
a(3)=3
!$omp parallel private(a)
a(3)=3
!$omp end parallel
a(3)=3
end  subroutine
call s
print *,'pass'
end
