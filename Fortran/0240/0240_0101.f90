function foo(i,j)
integer :: foo,i,j
foo = i*(j+2)
end function foo

integer foo
if (foo(1,2) /= 4) print *,'err'
print *,'pass'
end
