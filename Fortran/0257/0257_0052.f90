type ty
integer::a(5)
integer::b(5)
end type
type ty2
type(ty)::obj
integer,allocatable::al(:)
end type
type(ty2)::obj2
integer::i=1
obj2%obj%a =[1,2,3,4,5]
obj2%obj%b =[1,2,3,4,5]
allocate(obj2%al(5))
obj2%al = [1,2,3,4,5]
call sub(obj2%obj%a(1:5:i),obj2%obj%b(1:5:i),obj2%al(1:5:i))
if(any(obj2%obj%a/= [11,12,13,14,15]))print*,"101"
if(any(obj2%obj%b/= [11,12,13,14,15]))print*,"102"
i=2
call sub3(obj2%obj%a(1:5:i),obj2%obj%b(1:5:i), obj2%al(1:5:i))
if(any(obj2%obj%a/= [21,12,23,14,25]))print*,"107"
if(any(obj2%obj%b/= [21,12,23,14,25]))print*,"108"
if(any(obj2%al /= [21,12,23,14,25]))print*,"106" ,obj2%al
print*,"pass"
contains
subroutine sub(a,b,c)
integer::a(5)
integer::b(5)
integer::c(5)
integer::k=1
if(loc(a).ne.loc(obj2%obj%a))print*,"103"
if(loc(b).ne.loc(obj2%obj%b))print*,"104"
if(loc(c).ne.loc(obj2%al))print*,"105"
a = a + 5
b = b + 5
c =c + 5
call sub2(a(1:5:k),b(1:5:k), c(1:5:k))
end subroutine
subroutine sub2(a,b,c)
integer,contiguous::a(:)
integer,contiguous::b(:)
integer,contiguous::c(:)
if(loc(a).ne.loc(obj2%obj%a))print*,"123"
if(loc(b).ne.loc(obj2%obj%b))print*,"124"
if(loc(c).ne.loc(obj2%al))print*,"129"
a = a + 5
b = b + 5
c=  c  + 5
end subroutine
subroutine sub3(a,b,c)
integer::a(3)
integer::b(3)
integer::c(3)
integer::k=1
if(loc(a).eq.loc(obj2%obj%a))print*,"113"
if(loc(b).eq.loc(obj2%obj%b))print*,"114"
if(loc(c).eq.loc(obj2%al))print*,"115"
a = a + 5
b = b + 5
c =c + 5
call sub4(a(1:3:k),b(1:3:k), c(1:3:k))
end subroutine
subroutine sub4(a,b,c)
integer::a(3)
integer::b(3)
integer::c(3)
if(loc(a).eq.loc(obj2%obj%a))print*,"103"
if(loc(b).eq.loc(obj2%obj%b))print*,"104"
if(loc(c).eq.loc(obj2%al))print*,"105"
a = a + 5
b = b + 5
c =c + 5
end subroutine
end
