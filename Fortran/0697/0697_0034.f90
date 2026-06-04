call s1
call s2
print *,'pass'
contains
subroutine s1
type ty1
integer a(10)
real(8) b(5)
end type
type(ty1)::typ1(10)
if(size(typ1)/=10) print *,'err1'
if(sizeof(typ1)/=800) print *,'err2'
end subroutine
subroutine s2
integer,parameter::pi41=sizeof(X=1)
integer,parameter::pi42=sizeof(x=1)
integer::i41,i42
if(pi41/=sizeof(X=i41)) print *,'err11'
if(pi42/=sizeof(x=i42)) print *,'err12'
end subroutine
end
