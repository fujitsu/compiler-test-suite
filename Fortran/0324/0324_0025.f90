call sub01()
call sub02()
print *,'pass'
end

module mod002
contains
subroutine msub21()
entry msub22()
entry msub23()
end subroutine
subroutine msub2a()
end subroutine
end

module mod001
use mod002
contains
subroutine msub01()
entry msub02()
entry msub03()
end subroutine
subroutine msub0a()
call msub21()
call msub22()
call msub23()
call msub2a()
end subroutine
end

subroutine sub01()
use mod001
call msub01()
call msub02()
call msub03()
call msub0a()
end subroutine

subroutine sub02()
use mod001
call msub01()
call msub02()
call msub03()
call msub0a()
end subroutine
