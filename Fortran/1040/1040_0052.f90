integer i(4),n(1,4)
i=(/1,2,3,4/)
if (any(ifun(i,n)/=(/1,2,3,4/))) print *,'error-1'
print *,'pass'
contains
function ifun(j,k)
integer,dimension(:)::j
integer,dimension(:,:)::k
integer ifun(size(k))
ifun=j
end function
end
