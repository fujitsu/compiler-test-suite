subroutine sub(i,j,a,b)
integer a(i,j),b(j,i)
a=1
b=transpose(a)
end
integer,parameter::i=5,j=9
integer a(i,j),b(j,i)
call sub(i,j,a,b)
if (any(a/=transpose(b)))write(6,*) "NG"
print *,'pass'
end



