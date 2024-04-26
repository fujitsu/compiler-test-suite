class(*),pointer,dimension(:)::a1,a2,a3,a4,a5,a6,a7,a8,a9
allocate(character(kind=1)::a1(1))
allocate(character(len=1)::a2(1))
allocate(character::a3(1))
allocate(character*1::a4(1))
allocate(character(1,1)::a5(1))
allocate(character(len=1,kind=1)::a6(1))
allocate(character(1,kind=1)::a7(1))
allocate(character(kind=(1))::a8(1))
allocate(character(kind=(1**1))::a9(1))

k=0
select type(a3)
 type is (character(*))
a3= [character(kind=1)::'12']
if (len(a3)/=1) print *,10001
if (any(a3/='1')) print *,2001
k=1
end select
if (k/=1) print *,101
k=0
select type(a2)
 type is (character(len=*,kind=1))
a2= [character(kind=1)::'12']
if (len(a2)/=1) print *,10001
if (any(a2/='1')) print *,2001
k=1
end select
if (k/=1) print *,101
k=0
select type(a1)
 type is (character(*,kind=1))
a1= [character(kind=1)::'12']
if (len(a1)/=1) print *,10001
if (any(a1/='1')) print *,2001
k=1
end select
if (k/=1) print *,101
print *,'pass'
end
