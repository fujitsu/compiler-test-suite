call s1
call s2
end
subroutine s1
type t
integer a
end type 
class(t),pointer::cl
class(*),pointer::zl
associate(ppp=>cl)
!$omp task final(ppp%a<0)
!$omp end task
end associate
end
subroutine s2
type t
integer a
end type 
class(t),pointer::cl
class(*),pointer::zl
associate(ppp=>cl)
!$omp parallel
!$omp task 
!$omp task final(ppp%a<0)
!$omp end task
!$omp end task
!$omp end parallel
end associate
end
