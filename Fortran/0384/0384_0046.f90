module mod
procedure(ent01):: aaa
procedure(ent02):: bbb
procedure(ent03):: ccc
contains
subroutine sub(arg1)
entry ent01(arg1)
arg1=1.0
entry ent02(arg1)
arg1=2.0
entry ent03(arg1)
arg1=3.0
end subroutine
end

use mod
real :: xxx
call sub(xxx)
call aaa(xxx)
call bbb(xxx)
call ccc(xxx)
print *,'pass'
end

subroutine suba(arg1)
entry aaa(arg1)
arg1=1.0
entry bbb(arg1)
arg1=2.0
entry ccc(arg1)
arg1=3.0
end subroutine
