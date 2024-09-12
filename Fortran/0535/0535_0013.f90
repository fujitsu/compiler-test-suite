class(*),pointer :: x
type t
integer::i
end type
type(t),pointer :: y
allocate(x,source=1)
allocate(y)
x => y
y%i=10
select type(z=>x)
class is(t)
if(.not.associated(x,y)) print *,'err1'
class default
   print *,'ng'
end select
print *,'pass'
end 
