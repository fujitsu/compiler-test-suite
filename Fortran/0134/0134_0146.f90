subroutine s
integer:: a(3),b(3)
a(1)=3
b(3)=3
!$omp parallel private(a)
a(1)=3
b(3)=3
a(3)=3
b(3)=3
!$omp parallel private(a)
a(1)=3
b(3)=3
!$omp parallel private(a)
a(1)=3
b(3)=3
!$omp parallel private(a)
a(2)=3
b(3)=3
!$omp end parallel
a(2)=3
b(3)=3
!$omp end parallel
a(2)=3
b(3)=3
!$omp end parallel
a(2)=3
b(3)=3
a(2)=3
b(3)=3
!$omp end parallel
if (a(1)/=3)print *,401
if (b(3)/=3)print *,402
end  subroutine
call s
print *,'pass'
end
