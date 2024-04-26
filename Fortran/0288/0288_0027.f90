call test()
print *,'pass'
end
subroutine test()
assign 10 to i
goto i
10 continue
assign 20 to i
goto i
print *,'err'
20 continue
end
