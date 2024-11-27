print *,'pass'
end

subroutine test01()
character cha*10,ccc*10
ccc='1234567890'
cha='1234567890'
cha(1:8)=cha//'a'
print *,cha
cha='1234567890'
cha(1:8)=cha
print *,cha
cha='1234567890'
cha(1:8)=ccc//'a'
print *,cha
end
