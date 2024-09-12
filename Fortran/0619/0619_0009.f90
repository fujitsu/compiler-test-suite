subroutine  s1
integer,parameter:: a05= int(1.0)
if (abs(a05-1)>0.0001)print *,105
end
call s1
print *,'pass'
end
