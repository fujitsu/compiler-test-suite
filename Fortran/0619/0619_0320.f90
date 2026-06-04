subroutine  s1
integer,parameter:: a01= int2(1._8)
if (a01/=1)print *,301
if (int2(1._8)/=1)print *,302
end
call s1
print *,'pass'
end
