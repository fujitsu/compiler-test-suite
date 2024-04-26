call test()
print *,'pass'
end
subroutine test()
integer i(10,3)
call foo(i,10)
end
subroutine foo(i,k)
integer :: i,j,k
dimension :: i(k,3),j(k)
if (ubound(i,1).ne.k) print *,'err'
if (ubound(j,1).ne.k) print *,'err'
end
