subroutine s1
interface 
 subroutine s()
 end subroutine
end interface 
procedure(s),pointer::p
p=> s
call p
!$omp parallel private(p)
!$omp end parallel
end
call s1
print *,'pass'
end
 subroutine s()
 end subroutine
