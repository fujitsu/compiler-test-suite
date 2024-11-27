subroutine xx(n)
integer ::a(n)
integer ::b(n)
a=(/1,2,3,4,5,6,7,8,9,10/)
b=(/1,2,3,4,5,6,7,8,9,10/)
j=1
forall (i=1:2)
  a(i::j)=b(i::a(j))+100
end forall
if (any(a/=(/101,102,103,104,105,106,107,108,109,110/)))write(6,*) "NG"
forall (i=1:2)
  a(i:1)=b(i:1)+100
end forall
if (any(a/=(/101,102,103,104,105,106,107,108,109,110/)))write(6,*) "NG"
end
call xx(10)
print *,'pass'
end
