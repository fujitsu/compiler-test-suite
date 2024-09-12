class(*),pointer :: x
integer,target :: y
allocate(x,source=1)
x => y
select type(z=>x)
type is (integer)
if(.not.associated(x,y)) print *,'err1'
class default
   print *,'ng'
end select
print *,'pass'
end 
