 class(*),pointer,dimension(:)::a4
allocate(character*(1)::a4(1))
k=0
select type(a4)
 type is (character*(*)) 
a4= [character(kind=1)::'12']
if (len(a4)/=1) print *,101
if (any(a4/='1')) print *,201
k=1
end select
if (k/=1) print *,101
k=0
select type(a4)
 type is (character(*))   
a4= [character(kind=1)::'12']
if (len(a4)/=1) print *,301
if (any(a4/='1')) print *,401
k=1
end select
if (k/=1) print *,101
print *,'PASS'
end
