intrinsic iabs
call foo(iabs)
print *,'pass'
end
subroutine foo(ii)
integer(4):: ii
if (ii(-1_4)/=1) print *,101
end
