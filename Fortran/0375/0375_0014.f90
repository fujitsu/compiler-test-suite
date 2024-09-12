subroutine s1(ch1)
implicit character(*,1)(c)
if(ch1/=1_"abcde") print *,'err','ch1=',ch1
if(len(ch1)/=5) print *,'err2',len(ch1)
end subroutine
implicit character(5,1)(c)
c=1_"abcde"
if(len(c)/=5) print *,'err0',len(c)
call s1(c)
print *,'pass'
end
