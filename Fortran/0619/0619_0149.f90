subroutine s1(n)
integer k(2),i(n)
i=n
k=if(i)
if (any(k/=1))print *,101
contains
function if(i)
integer i(:)
integer if(size(i))
if=1
end function
end 
call s1(2)
print *,'pass'
end
