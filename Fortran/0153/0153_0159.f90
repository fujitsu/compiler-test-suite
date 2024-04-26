procedure(character(kind=1))::a5
procedure(character(len=1))::a4
procedure(character)::b12
procedure(character*1)::b13
procedure(character(1,1))::b19
procedure(character(1,1))  b20
procedure(character(kind=1))  a5a
procedure(character(len=1))  a4b
procedure(character)  b121
procedure(character*1)  b131

procedure(character(kind=(1)))::c1
procedure(character(kind=(1**1)))::d1
if (a5()/='1') print *,10001
if (a4()/='1') print *,10002
if (b12()/='1') print *,10003
if (b13()/='1') print *,10004
if (b19()/='1') print *,10005
if (b20()/='1') print *,10006
if (a5a()/='1') print *,10007
if (a4b()/='1') print *,10008
if (b121()/='1') print *,10009
if (b131()/='1') print *,10010
if (c1()/='1') print *,10011
if (d1()/='1') print *,10012
print *,'pass'
end
function  a5()
implicit character(a-d)
entry a4()
entry b12()
entry b13()
entry b19()
entry b20()
entry a5a()
entry a4b()
entry b121()
entry b131()
entry c1()
entry d1()
a5='1'
end
