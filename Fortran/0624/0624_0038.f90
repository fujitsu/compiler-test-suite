subroutine s1
complex,parameter ::a=(19,20)
real   ,parameter ::b=3. 
complex,parameter ::c=a/b
complex :: cc
cc=a/b
if (abs(cc-c)>0.000001)print *,c,cc
end
call s1
print *,'pass'
end
