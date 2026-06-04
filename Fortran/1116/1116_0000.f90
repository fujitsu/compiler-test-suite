call s1
call s2
call s3
call s4
print *,'pass'
contains
subroutine s1
integer(1)::a(2)
a=0
!$omp parallel
do k=1,2
!$omp  task depend(out:a(k))
!$omp  end task

!$omp  task depend(inout:a(k))
!$omp  end task

!$omp  task depend(in:a(k))
!$omp  end task
enddo 
!$omp end parallel
end subroutine s1
subroutine s2
integer(2)::a(2)
a=0
!$omp parallel
do k=1,2
!$omp  task depend(out:a(k))
!$omp  end task

!$omp  task depend(inout:a(k))
!$omp  end task

!$omp  task depend(in:a(k))
!$omp  end task
enddo 
!$omp end parallel
end subroutine s2
subroutine s3
integer(4)::a(2)
a=0
!$omp parallel
do k=1,2
!$omp  task depend(out:a(k))
!$omp  end task

!$omp  task depend(inout:a(k))
!$omp  end task

!$omp  task depend(in:a(k))
!$omp  end task
enddo 
!$omp end parallel
end subroutine s3
subroutine s4
integer(8)::a(2)
a=0
!$omp parallel
do k=1,2
!$omp  task depend(out:a(k))
!$omp  end task

!$omp  task depend(inout:a(k))
!$omp  end task

!$omp  task depend(in:a(k))
!$omp  end task
enddo 
!$omp end parallel
end subroutine s4
end
