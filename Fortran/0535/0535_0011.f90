class(*),pointer :: x(:)
integer,pointer :: y(:)
allocate(x(1),source=[1])
allocate(y(1))
x => y
select type(z=>x)
type is (integer)
if(.not.associated(x,y)) print *,'err1'
class default
   print *,'ng'
end select
print *,'pass'
end 
