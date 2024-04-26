subroutine s(nn)
integer,target:: n1(nn),n2(nn)
n=1
n2(2)=1
 n1=(/(n2(2),n=1,nn)/)
 n1=(/(n2(2),n=1,nn)/)
end
call s(3)
print *,'pass'
end
