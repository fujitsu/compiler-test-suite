subroutine s1
 integer,parameter::a1(4,4)=reshape([(k,k=1,16)],[4,4])
 integer,parameter::a2(4,4)=reshape([(k,k=1,16)],[4,4])
 integer,parameter::a3(4,4)=matmul(a1,a2)

if (any(a3/=matmul(a1,a2))) print *,101
end
call s1
print *,'pass'
end
