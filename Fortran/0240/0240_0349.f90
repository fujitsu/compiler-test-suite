call s()
print *,'pass'
end
subroutine s()
ii=1
endfile 20
read(20,*,end=100) ii
print *,"err"
100 if (ii.ne.1   )print *,'err'
end
