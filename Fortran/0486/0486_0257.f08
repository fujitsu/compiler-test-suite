subroutine s1
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=acosh(c)
complex(8),parameter:: c2(*)=acosh([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= acosh(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= acosh([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
subroutine s2
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=asinh(c)
complex(8),parameter:: c2(*)=asinh([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= asinh(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= asinh([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
subroutine s3
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=atanh(c)
complex(8),parameter:: c2(*)=atanh([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= atanh(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= atanh([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
call s1
call s2
call s3
print *,'pass'
end
