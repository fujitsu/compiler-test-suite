subroutine s
integer:: a(3)
a(3)=3
!$omp parallel private(a)
a(3)=3
!$omp end parallel
if (a(3)/=3)print *,401
end  subroutine
call s
print *,'pass'
end
