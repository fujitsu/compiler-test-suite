call test()
print *,'pass'
end
subroutine test()
ii=1
endfile 10
read(10,*,end=100) ii
print *,"err"
100 if (ii.ne.1   )print *,'err'
end
