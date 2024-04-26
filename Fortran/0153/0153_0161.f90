character,pointer,dimension(:)::a1,a2,a3,a4,a5,a6,a7,a8,a9
allocate(character(kind=1)::a1(1))
allocate(character(len=1)::a2(1))
allocate(character::a3(1))
allocate(character*1::a4(1))
allocate(character(1,1)::a5(1))
allocate(character(len=1,kind=1)::a6(1))
allocate(character(1,kind=1)::a7(1))
allocate(character(kind=(1))::a8(1))
allocate(character(kind=(1**1))::a9(1))

if (len(a1)/=1) print *,10001
if (len(a2)/=1) print *,20002
if (len(a3)/=1) print *,10001
if (len(a4)/=1) print *,10001
if (len(a5)/=1) print *,10001
if (len(a6)/=1) print *,10001
if (len(a7)/=1) print *,10001
if (len(a8)/=1) print *,10001
if (len(a9)/=1) print *,10001
a1= [character(kind=1)::'12']
a2=[character(len=1)::'12']
a3=[character::'12']
a4=[character*1::'12']
a5=[character(1,1)::'12']
a6=[character(len=1,kind=1)::'12']
a7=[character(1,kind=1)::'12']
a8=[character(kind=(1))::'12']
a9=[character(kind=(1**1))::'12']
if (any(a1/='1')) print *,2001
if (any(a2/='1')) print *,2001
if (any(a3/='1')) print *,2001
if (any(a4/='1')) print *,2001
if (any(a5/='1')) print *,2001
if (any(a6/='1')) print *,2001
if (any(a7/='1')) print *,2001
if (any(a8/='1')) print *,2001
if (any(a9/='1')) print *,2001
print *,'pass'
end
