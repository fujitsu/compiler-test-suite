integer :: array(2,3)=0
integer :: result( 2 )
array(1,3)=1
result = findloc( array , 1)

if (any(result/=[1,3])) print *,101
if (size(result)/=2) print *,102
print *,'pass'
end
