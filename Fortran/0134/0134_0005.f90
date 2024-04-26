subroutine s(x1,x2,x3,n)
integer,parameter::k=z'7fff'
character(k) x1
character(n) x2
character(*) x3
x1='1'
x2='1'
x3='1'
end
integer,parameter::k=z'7fff',n=k
character(k) x1
character(n) x2
character(n) x3
call       s(x1,x2,x3,n)
print *,'pass'
end
