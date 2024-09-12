integer(kind=1)::i1,ii1,ci1
integer(kind=2)::i2,ii2,ci2
integer(kind=4)::i4,ii4,ci4
integer(kind=8)::i8,ii8,ci8
real(kind=4)::r
real(kind=8)::d
real(kind=16)::q
call system_clock()
call a1(i1,ii1,ci1)
call a2(i2,ii1,ci1)
call a4(i4,ii1,ci1)
call a8(i8,ii1,ci1) 
call a11(i1,ii2,ci1)
call a21(i2,ii2,ci1)
call a41(i4,ii2,ci1)
call a81(i8,ii2,ci1) 
call a111(i1,ii4,ci1)
call a211(i2,ii4,ci1)
call a411(i4,ii4,ci1)
call a811(i8,ii4,ci1) 
call a1111(i1,ii8,ci1)
call a2111(i2,ii8,ci1)
call a4111(i4,ii8,ci1)
call a8111(i8,ii8,ci1) 
call a1112(i1,r,ci1)
call a2112(i2,r,ci1)
call a4112(i4,r,ci1)
call a8112(i8,r,ci1) 
call a1113(i1,d,ci1)
call a2113(i2,d,ci1)
call a4113(i4,d,ci1)
call a8113(i8,d,ci1)
call a1114(i1,q,ci1)
call a2114(i2,q,ci1)
call a4114(i4,q,ci1)
call a8114(i8,q,ci1) 
call s2(i8,d,ci2)
call s3(i4,q,ci8)
print *,'pass'
contains
subroutine a1(a,b,c)
integer(kind=1),intent(out),optional::a,b,c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a2(a,b,c)
integer(kind=2),intent(out),optional::a
integer(kind=1),intent(out),optional::b,c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a4(a,b,c)
integer(kind=4),intent(out),optional::a
integer(kind=1),intent(out),optional::b,c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a8(a,b,c)
integer(kind=8),intent(out),optional::a
integer(kind=1),intent(out),optional::b,c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine a11(a,b,c)
integer(kind=1),intent(out),optional::a,c
integer(kind=2),intent(out),optional::b
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a21(a,b,c)
integer(kind=2),intent(out),optional::a,b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a41(a,b,c)
integer(kind=4),intent(out),optional::a
integer(kind=2),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a81(a,b,c)
integer(kind=8),intent(out),optional::a
integer(kind=2),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine a111(a,b,c)
integer(kind=1),intent(out),optional::a,c
integer(kind=4),intent(out),optional::b
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a211(a,b,c)
integer(kind=2),intent(out),optional::a
integer(kind=4),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a411(a,b,c)
integer(kind=4),intent(out),optional::a,b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a811(a,b,c)
integer(kind=8),intent(out),optional::a
integer(kind=4),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine a1111(a,b,c)
integer(kind=1),intent(out),optional::a,c
integer(kind=8),intent(out),optional::b
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a2111(a,b,c)
integer(kind=2),intent(out),optional::a
integer(kind=8),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a4111(a,b,c)
integer(kind=4),intent(out),optional::a
integer(kind=8),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a8111(a,b,c)
integer(kind=8),intent(out),optional::a
integer(kind=8),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine a1112(a,b,c)
integer(kind=1),intent(out),optional::a,c
real(kind=4),intent(out),optional::b
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a2112(a,b,c)
integer(kind=2),intent(out),optional::a
real(kind=4),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a4112(a,b,c)
integer(kind=4),intent(out),optional::a
real(kind=4),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a8112(a,b,c)
integer(kind=8),intent(out),optional::a
real(kind=4),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine a1113(a,b,c)
integer(kind=1),intent(out),optional::a,c
real(kind=8),intent(out),optional::b
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a2113(a,b,c)
integer(kind=2),intent(out),optional::a
real(kind=8),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a4113(a,b,c)
integer(kind=4),intent(out),optional::a
real(kind=8),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a8113(a,b,c)
integer(kind=8),intent(out),optional::a
real(kind=8),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine a1114(a,b,c)
integer(kind=1),intent(out),optional::a,c
real(kind=16),intent(out),optional::b
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a2114(a,b,c)
integer(kind=2),intent(out),optional::a
real(kind=16),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a4114(a,b,c)
integer(kind=4),intent(out),optional::a
real(kind=16),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine
subroutine a8114(a,b,c)
integer(kind=8),intent(out),optional::a
real(kind=16),intent(out),optional::b
integer(kind=1),intent(out),optional::c
call system_clock(count=a)
call system_clock(count_rate=b)
call system_clock(count_max=c)
call system_clock(count_max=c,count=a,count_rate=b)
end subroutine

subroutine s2(a,b,c)
integer(kind=8),intent(out)::a
integer(kind=2),intent(out)::c
real(kind=8),intent(out)::b
call system_clock(a,b,c)
end subroutine
subroutine s3(a,b,c)
integer(kind=4),intent(out)::a
integer(kind=8),intent(out)::c
real(kind=16),intent(out)::b
call system_clock(a,b,c)
end subroutine
end
