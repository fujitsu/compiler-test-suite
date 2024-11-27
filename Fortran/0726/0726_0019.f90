call test01()
print *,'pass'
end
subroutine test01()
call s_int_1(floor(3.1e+0,1))
call s_int_1(floor(3.1d+0,1))
call s_int_1(floor(3.1q+0,1))
call s_int_2(floor(4.1e+0,2))
call s_int_2(floor(4.1d+0,2))
call s_int_2(floor(4.1q+0,2))
call s_int_4(floor(5.1e+0,4))
call s_int_4(floor(5.1d+0,4))
call s_int_4(floor(5.1q+0,4))
call s_int_8(floor(6.1e+0,8))
call s_int_8(floor(6.1d+0,8))
call s_int_8(floor(6.1q+0,8))
call s_int_1(floor(a=3.1e+0,kind=1))
call s_int_1(floor(a=3.1d+0,kind=1))
call s_int_1(floor(a=3.1q+0,kind=1))
call s_int_2(floor(a=4.1e+0,kind=2))
call s_int_2(floor(a=4.1d+0,kind=2))
call s_int_2(floor(a=4.1q+0,kind=2))
call s_int_4(floor(a=5.1e+0,kind=4))
call s_int_4(floor(a=5.1d+0,kind=4))
call s_int_4(floor(a=5.1q+0,kind=4))
call s_int_8(floor(a=6.1e+0,kind=8))
call s_int_8(floor(a=6.1d+0,kind=8))
call s_int_8(floor(a=6.1q+0,kind=8))
call s_int_1(floor(kind=1,a=3.1e+0))
call s_int_1(floor(kind=1,a=3.1d+0))
call s_int_1(floor(kind=1,a=3.1q+0))
call s_int_2(floor(kind=2,a=4.1e+0))
call s_int_2(floor(kind=2,a=4.1d+0))
call s_int_2(floor(kind=2,a=4.1q+0))
call s_int_4(floor(kind=4,a=5.1e+0))
call s_int_4(floor(kind=4,a=5.1d+0))
call s_int_4(floor(kind=4,a=5.1q+0))
call s_int_8(floor(kind=8,a=6.1e+0))
call s_int_8(floor(kind=8,a=6.1d+0))
call s_int_8(floor(kind=8,a=6.1q+0))
call s_int_4(floor(a=5.1e+0))
call s_int_4(floor(a=5.1d+0))
call s_int_4(floor(a=5.1q+0))
call s_int_4(floor(5.1e+0))
call s_int_4(floor(5.1d+0))
call s_int_4(floor(5.1q+0))
contains
subroutine s_int_1(i)
integer(kind=1) i
if (i.ne.3) write(6,*) "NG"
end subroutine
subroutine s_int_2(i)
integer(kind=2) i
if (i.ne.4) write(6,*) "NG"
end subroutine
subroutine s_int_4(i)
integer(kind=4) i
if (i.ne.5) write(6,*) "NG"
end subroutine
subroutine s_int_8(i)
integer(kind=8) i
if (i.ne.6) write(6,*) "NG"
end subroutine
end
