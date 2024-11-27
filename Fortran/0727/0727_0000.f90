call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
real(kind=4) r4
real(kind=8) r8
real(kind=16) r16
r4=-990.0_4
r8=-990.0_8
r16=-990.0_16
call cpu_time(time=r4)
call cpu_time(time=r8)
call cpu_time(time=r16)
if (r4.eq.-990.0_4) write(6,*) "NG"
if (r8.eq.-990.0_8) write(6,*) "NG"
if (r16.eq.-990.0_16) write(6,*) "NG"
end

subroutine test02()
real(kind=4) r4(2)
real(kind=8) r8(2)
real(kind=16) r16(2)
r4=-990.0_4
r8=-990.0_8
r16=-990.0_16
call cpu_time(time=r4(1))
call cpu_time(time=r8(1))
call cpu_time(r16(1))
if (r4(1).eq.-990.0_4) write(6,*) "NG"
if (r8(1).eq.-990.0_8) write(6,*) "NG"
if (r16(1).eq.-990.0_16) write(6,*) "NG"
call cpu_time(Time=r4(2))
call cpu_time(time=r8(2))
call cpu_time(TIME=r16(2))
if (r4(2).eq.-990.0_4) write(6,*) "NG"
if (r8(2).eq.-990.0_8) write(6,*) "NG"
if (r16(2).eq.-990.0_16) write(6,*) "NG"
end
subroutine test03()
type ty1
real(kind=4) r4
real(kind=8) r8
real(kind=16) r16
end type
type (ty1) :: sss
sss%r4=-990.0_4
sss%r8=-990.0_8
sss%r16=-990.0_16
call cpu_time(tIme=sss%r4)
call cpu_time(tiMe=sss%r8)
call cpu_time(timE=sss%r16)
if (sss%r4.eq.-990.0_4) write(6,*) "NG"
if (sss%r8.eq.-990.0_8) write(6,*) "NG"
if (sss%r16.eq.-990.0_16) write(6,*) "NG"
end

