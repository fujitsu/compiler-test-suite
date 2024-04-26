character,pointer::a1,a2,a3,a4,a5,a6,a7,a8,a9
allocate(character(kind=1)::a1)
allocate(character(len=1)::a2)
allocate(character::a3)
allocate(character*1::a4)
allocate(character(1,1)::a5)
allocate(character(len=1,kind=1)::a6)
allocate(character(1,kind=1)::a7)
allocate(character(kind=(1))::a8)
allocate(character(kind=(1**1))::a9)

if (len(a1)/=1) print *,10001
if (len(a2)/=1) print *,20002
if (len(a3)/=1) print *,10001
if (len(a4)/=1) print *,10001
if (len(a5)/=1) print *,10001
if (len(a6)/=1) print *,10001
if (len(a7)/=1) print *,10001
if (len(a8)/=1) print *,10001
if (len(a9)/=1) print *,10001
print *,'pass'
end
