call ss1
call ss2
end
subroutine ss1
associate(ppp=>iii)
!$omp parallel reduction(+:iii)
!$omp end parallel
end associate
end
subroutine ss2
integer,dimension(2)::a1,a2
a1=1
a2=2
call sub(a1,a2)
contains
subroutine sub(a1,a2)
integer,dimension(:),optional::a1,a2
associate(p1=>a1,p2=>a2)
!$omp parallel reduction(+:a1) reduction(*:a2)
  p1 = p1 + 1
  p2 = p2 * 2
!$omp end parallel
end associate
end subroutine
end 

