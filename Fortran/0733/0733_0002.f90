integer(kind=4) j
j=z'80000000'
call sub(j)
print *,'pass'
end
subroutine sub(j)
integer(kind=4) j
integer(kind=4) i,ii
ii=ishft(j,31)
i=ishft(ii,1)
if (i/=0)write(6,*) "NG"
end
