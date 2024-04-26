type ty
integer::a(5)
integer::b(5)
end type
type(ty)::obj
integer::i=1
obj%a =[1,2,3,4,5]
obj%b =[1,2,3,4,5]
call sub(obj%a(1:5:i),obj%b(1:5:i))
if(any(obj%a/= [11,12,13,14,15]))print*,"101"
if(any(obj%b/= [11,12,13,14,15]))print*,"102"
i=2
call sub3(obj%a(1:5:i),obj%b(1:5:i))
if(any(obj%a/= [21,12,23,14,25]))print*,"101"
if(any(obj%b/= [21,12,23,14,25]))print*,"102"
print*,"pass"
contains
subroutine sub(a,b)
integer::a(5)
integer::b(5)
integer::k=1
if(loc(a).ne.loc(obj%a))print*,"103"
if(loc(b).ne.loc(obj%b))print*,"104"
a = a + 5
b = b + 5
call sub2(a(1:5:k),b(1:5:k))
end subroutine
subroutine sub2(a,b)
integer,contiguous::a(:)
integer,contiguous::b(:)
if(loc(a).ne.loc(obj%a))print*,"103"
if(loc(b).ne.loc(obj%b))print*,"104"
a = a + 5
b = b + 5
end subroutine
subroutine sub3(a,b)
integer::a(3)
integer::b(3)
integer::k=1
if(loc(a).eq.loc(obj%a))print*,"103"
if(loc(b).eq.loc(obj%b))print*,"104"
a = a + 5
b = b + 5
call sub4(a(1:3:k),b(1:3:k))
end subroutine
subroutine sub4(a,b)
integer::a(3)
integer::b(3)
if(loc(a).eq.loc(obj%a))print*,"103"
if(loc(b).eq.loc(obj%b))print*,"104"
a = a + 5
b = b + 5
end subroutine
end
