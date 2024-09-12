type :: str
integer,allocatable :: i
end type
!$omp atomic write
j= fun    (str(1),1)
if (j/=2) print *,1001
call ss1
print *,'pass'
contains
function fun(x,n) result(nn)

type(str)::x
nn=x%i + n

end function
end
subroutine ss1
type :: str
integer,allocatable :: i
end type
!$omp atomic write
j= fun    (str(1),1)
if (j/=3) print *,1002
contains
function fun(x,n) result(nn)

type(str)::x
nn=x%i + n + 1
end function
end

