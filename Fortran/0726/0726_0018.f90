call test01()
print *,'pass'
end
subroutine test01()
call s_int_1(ceiling(3.1e+0,1))
call s_int_1(ceiling(3.1d+0,1))
call s_int_1(ceiling(3.1q+0,1))
call s_int_2(ceiling(4.1e+0,2))
call s_int_2(ceiling(4.1d+0,2))
call s_int_2(ceiling(4.1q+0,2))
call s_int_4(ceiling(5.1e+0,4))
call s_int_4(ceiling(5.1d+0,4))
call s_int_4(ceiling(5.1q+0,4))
call s_int_8(ceiling(6.1e+0,8))
call s_int_8(ceiling(6.1d+0,8))
call s_int_8(ceiling(6.1q+0,8))
call s_int_1(ceiling(a=3.1e+0,kind=1))
call s_int_1(ceiling(a=3.1d+0,kind=1))
call s_int_1(ceiling(a=3.1q+0,kind=1))
call s_int_2(ceiling(a=4.1e+0,kind=2))
call s_int_2(ceiling(a=4.1d+0,kind=2))
call s_int_2(ceiling(a=4.1q+0,kind=2))
call s_int_4(ceiling(a=5.1e+0,kind=4))
call s_int_4(ceiling(a=5.1d+0,kind=4))
call s_int_4(ceiling(a=5.1q+0,kind=4))
call s_int_8(ceiling(a=6.1e+0,kind=8))
call s_int_8(ceiling(a=6.1d+0,kind=8))
call s_int_8(ceiling(a=6.1q+0,kind=8))
call s_int_1(ceiling(kind=1,a=3.1e+0))
call s_int_1(ceiling(kind=1,a=3.1d+0))
call s_int_1(ceiling(kind=1,a=3.1q+0))
call s_int_2(ceiling(kind=2,a=4.1e+0))
call s_int_2(ceiling(kind=2,a=4.1d+0))
call s_int_2(ceiling(kind=2,a=4.1q+0))
call s_int_4(ceiling(kind=4,a=5.1e+0))
call s_int_4(ceiling(kind=4,a=5.1d+0))
call s_int_4(ceiling(kind=4,a=5.1q+0))
call s_int_8(ceiling(kind=8,a=6.1e+0))
call s_int_8(ceiling(kind=8,a=6.1d+0))
call s_int_8(ceiling(kind=8,a=6.1q+0))
call s_int_4(ceiling(a=5.1e+0))
call s_int_4(ceiling(a=5.1d+0))
call s_int_4(ceiling(a=5.1q+0))
call s_int_4(ceiling(5.1e+0))
call s_int_4(ceiling(5.1d+0))
call s_int_4(ceiling(5.1q+0))
contains
subroutine s_int_1(i)
integer(kind=1) i
if (i.ne.4) write(6,*) "NG"
end subroutine
subroutine s_int_2(i)
integer(kind=2) i
if (i.ne.5) write(6,*) "NG"
end subroutine
subroutine s_int_4(i)
integer(kind=4) i
if (i.ne.6) write(6,*) "NG"
end subroutine
subroutine s_int_8(i)
integer(kind=8) i
if (i.ne.7) write(6,*) "NG"
end subroutine
end
