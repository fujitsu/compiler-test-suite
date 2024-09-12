subroutine s1
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=cosh(c)
complex(8),parameter:: c2(*)=cosh([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= cosh(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= cosh([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
subroutine s2
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=sinh(c)
complex(8),parameter:: c2(*)=sinh([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= sinh(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= sinh([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
subroutine s3
complex(8),parameter::c=(0.1,0.1)
complex(8),parameter:: c1=tanh(c)
complex(8),parameter:: c2(*)=tanh([c])
complex(8)::d=(0.1,0.1),d1,d2(1)
d1= tanh(d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= tanh([d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
call s1
call s2
call s3
print *,'pass'
end
