subroutine s1
integer a(3)
a(3)=0
n=-1
m=1234567
write(1,*) (a(k),k=1,n)
write(1,*) (a(k),k=m,-1)
end
call s1
print *,'pass'
end
