call test()
print *,'pass'
end
subroutine test()
integer :: foo,i,j
i=100
j=2
if (foo(i,j).ne.i*(j+2)   )print *,'err'
end
function foo(i,j)
integer :: foo,i,j
foo =i*(j+2)
end function foo
