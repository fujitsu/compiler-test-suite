integer :: num(5)=[1,2,3,4,5]
integer::i=1
call sub(num(1:5:i))
if(any(num/= [11,12,13,14,15]))print*,"101",num
print*,"pass"
contains
subroutine sub(dmy)
integer::dmy(5)
if(loc(dmy).ne.loc(num))print*,"102", loc(dmy), loc(num)
dmy = dmy + 10
end subroutine
end
