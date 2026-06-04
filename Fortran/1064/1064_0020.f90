subroutine s1
real:: a(4)=[2,6,4,6]
intrinsic findloc
if (any(findloc( a , 6) /=2 ) ) print *,101
end
call s1
print *,'pass'
end
