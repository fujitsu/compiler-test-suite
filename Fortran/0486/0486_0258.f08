subroutine s1
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=acos(c)
complex(8),parameter:: c2(*)=acos([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= acos(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= acos([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
subroutine s2
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=asin(c)
complex(8),parameter:: c2(*)=asin([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= asin(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= asin([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
subroutine s3
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=atan(c)
complex(8),parameter:: c2(*)=atan([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= atan(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= atan([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
call s1
call s2
call s3
print *,'pass'
end
