module m
interface assignment (=)
module subroutine test(a,b)
integer,intent(inout) :: a
character,intent(in) :: b
end subroutine test
end interface 
integer :: omp_out
character :: omp_in='1'
contains
function aa()
omp_out=omp_in
if (omp_out/=1) print *,101
omp_out=omp_in
if (omp_out/=1) print *,101
omp_out=omp_in
if (omp_out/=1) print *,101
aa=0
end
end
submodule (m) smod
contains
module subroutine test(a,b)
integer,intent(inout) :: a
character,intent(in) :: b
if (b=='1') a=1
end subroutine
end 
use m
if (aa()/=0)  print *,202
print *,'pass'
end
