subroutine s1
INTEGER(kind=1)::c
c=INT(B'11111111',KIND=1) 
if (c/=-1)print *,101,c
end
call s1
print *,'pass'
end
