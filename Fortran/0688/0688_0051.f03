call ss([.false.])
call ss([.true.])
call ss1
call ss2
print *,'pass'
contains
subroutine ss(l)
logical::l(:)
!$omp  task  final(l(1))
!$omp  task  final(l(1))
!$omp  task  final(l(1))
!$omp  end task
!$omp  end task
!$omp  end task
end subroutine
subroutine ss1
i=1
!$omp task final((.true._1)) if(i>0)
!$omp task final((.true._2)) if(i>0)
!$omp task final((.true._4)) if(i>0)
!$omp task final((.true._8)) if(i>0)
!$omp task final(1/=1) if(i>0)
!$omp task final(((.true._1))) if(i>0)
i=2
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
end subroutine
subroutine ss2
i=1
!$omp task final(i<0)
!$omp task if(i<0)
!$omp end task
!$omp end task
!$omp task final(i==0)
!$omp task if(i==0)
!$omp end task
!$omp end task
!$omp task final(i>0)
!$omp task final(.true.)
!$omp end task
!$omp end task
end subroutine
end
