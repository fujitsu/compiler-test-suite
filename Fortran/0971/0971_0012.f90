subroutine  s1
type str
 real::x
end type
type (str)::c
parameter(zero=0.0)
real,parameter::a=atan2(zero,zero)
c=str(atan2(zero,zero))
print *,c%x
print *,a
end
call s1
print *,'pass'
end
