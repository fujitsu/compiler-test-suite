type t
integer::a(2),j
end type
type(t)::tt(2)
tt%j=0
!$omp parallel
do k=1,2
!$omp  task depend(out:tt(k)%a(k))
!$omp  end task

!$omp  task depend(inout:tt(k)%a(k))
!$omp  end task

!$omp  task depend(in:tt(k)%a(k))
!$omp  end task

enddo 
!$omp end parallel
print *,'pass'
end
