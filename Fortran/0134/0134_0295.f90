subroutine s1
integer,pointer::a
allocate(a)
call s2(a)
if (a/=1)print *,'error'
call s3(a)
if (a/=1)print *,'error'
contains
subroutine s2(a)
integer,pointer,intent(in)::a
a=1
end subroutine
subroutine s3(a)
integer,pointer,intent(out)::a
allocate(a)
a=1
end subroutine
end
call s1
print *,'pass'
end


