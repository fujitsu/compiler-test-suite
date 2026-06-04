procedure(character(kind=1)),pointer::a1
procedure(character(len=1)),pointer::a2
procedure(character),pointer::a3
procedure(character*1),pointer::a4
procedure(character(1,1)),pointer::a5
procedure(character(kind=(1))),pointer::a6
procedure(character(kind=(1**1))),pointer::a7
procedure(character(kind=1))::xa1
procedure(character(len=1))::xa2
procedure(character)::xa3
procedure(character*1)::xa4
procedure(character(1,1))::xa5
procedure(character(kind=(1)))::xa6
procedure(character(kind=(1**1)))::xa7
a1=>xa1
a2=>xa2
a3=>xa3
a4=>xa4
a5=>xa5
a6=>xa6
a7=>xa7
if (a1()/='1') print *,10001
if (a2()/='1') print *,10002
if (a3()/='1') print *,10003
if (a4()/='1') print *,10004
if (a5()/='1') print *,10005
if (a6()/='1') print *,10006
if (a7()/='1') print *,10007
print *,'pass'
end
function  xa1()
implicit character(x)
entry xa2()
entry xa3()
entry xa4()
entry xa5()
entry xa6()
entry xa7()
xa7='1'
end
