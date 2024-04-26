subroutine s1
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:1) i(1:10) = i(1:10)+1 
if (i(01)/=2 .or. i(10)/=11) print *,101
end
call s1
print *,'OK'
end
