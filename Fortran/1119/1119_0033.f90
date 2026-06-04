module mmm
type t
complex i
contains
generic::assignment(=)=>aaa
procedure,non_overridable,pass::aaa
end type t
contains
subroutine aaa(a,b)
class(t),intent(out),asynchronous::a
class(*),intent(in),target::b
asynchronous::b
complex::j=0
select type(b)
type is (t)
!$omp atomic capture
j%im=a%i%im
a%i%im = b%i%im
!$omp end atomic

end select
return
end subroutine
end module
use mmm
print *,'pass'
end
