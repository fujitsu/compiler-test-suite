integer AAA(3)/28,30,13/
AAA(2)=6
AAA(1:2:1)=AAA(::2)
write(1,*) AAA
rewind 1
read(1,*) k1,k2,k3
if (any((/k1,k2,k3/)/=(/28,13,13/)))print *,k1,k2,k3
print *,'pass'
end
