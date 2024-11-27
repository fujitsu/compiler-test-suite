k=0
select type(aa=>fun())
type is (character(*))
 k=1
class default
 k=2
end select
if (k/=2) print *,9001
print *,'pass'
contains
function fun()
class(*),pointer :: fun
block
save
integer,target :: tgt
tgt=1     
fun=>tgt
end block
end function
end
