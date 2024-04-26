subroutine s()
integer:: a(3)
 a(3)=1
a(3)=1
!$omp parallel
 a(3)=1
 a(3)=1
 a(3)=1
!$omp end parallel
 a(3)=1
 a(3)=1
end
call s()
print *,'pass'
end
