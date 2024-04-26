call sss()
print*, 'pass'
contains
subroutine sss(a1,a4)
integer,parameter::pi=1
procedure(character(kind=1_1)),optional::a1
procedure(character(kind=1_2)),pointer::a2
procedure(character(kind=1_4)),save::a3
procedure(character(kind=1_8)),intent(inout),optional::a4
procedure(character(kind=pi))::a5
procedure(character*1)::a6
procedure(character*(1*1))::a7
procedure(character(kind=(1*1)))::a8
procedure(character(1000000001,kind=1))::a9
procedure(character(kind=4-3))::a10
pointer:: a3,a4
end subroutine
end
function a1() result(ch)
character::ch
ch=""
end
subroutine  a5
end
subroutine  a6
end
subroutine  a7
end
subroutine  a8
end
subroutine  a9
end
subroutine  a10
end
