subroutine s
integer n1(2),n2(2),n3(3)
 n1=1;n2=2;n3=3
k=1
write(63,*) (n1(nf(k)),n2(nf(k)),n3(nf(k)),ki=1,2)
write(63,*) (n1(nf(k)),n2(nf(k)),n3(nf(k)),ki=1,2)
end
call s
print *,'pass'
end
function nf(k)
nf=k
end
