call test()
print *,'pass'
end
subroutine test()
asynchronous:: a
a=1
a=a
end
