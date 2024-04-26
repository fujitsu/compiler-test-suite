subroutine s1
integer,allocatable::a
allocate(a)
a=1
call s2(a)
if (a/=1)print *,'error'
call s3(a)
if (a/=1)print *,'error'
contains
subroutine s2(a)
integer,allocatable,intent(in)::a
if (a/=1)print *,'error'
end subroutine
subroutine s3(a)
integer,allocatable,intent(out)::a
allocate(a)
a=1
end subroutine
end
call s1
print *,'pass'
end


