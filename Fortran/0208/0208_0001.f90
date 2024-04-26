subroutine s
integer,parameter::k=2
complex (k)::a1=(1,2),a2=(2,3)
call s1(a1+a2)
call s2(a1-a2)
call s3(a1*a2)
call s4(a1/a2)
contains
subroutine s1(x)
complex(k)::x
if (abs(x-(3.00000000,5.00000000))>0.001) print *,101
end subroutine
subroutine s2(x)
complex(k)::x
if (abs(x-(-1.00000000,-1.00000000))>0.001) print *,102
end subroutine
subroutine s3(x)
complex(k)::x
if (abs(x-(-4.00000000,7.00000000))>0.001) print *,103
end subroutine
subroutine s4(x)
complex(k)::x
if (abs(x-(0.615384638,7.69230798E-02))>0.001) print *,104
end subroutine
end subroutine
call s
print *,'pass'
end
