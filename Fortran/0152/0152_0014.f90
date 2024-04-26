integer,parameter::pi=1
procedure(character(kind=1_1))::a1
procedure(character(kind=1_2))::a2
procedure(character(kind=1_4))::a3
procedure(character(kind=1_8))::a4
procedure(character(kind=pi))::a5
procedure(character*1)::a6
procedure(character*(1*1))::a7
procedure(character(kind=(1*1)))::a8
procedure(character(0,kind=4))::a9
procedure(character(kind=4-3))::a10


print*, 'pass'
end
function a1() result(ch)
character::ch
ch=""
end
function a2() result(ch)
character::ch
ch=""
end
function a3() result(ch)
character::ch
ch=""
end
function a4() result(ch)
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
