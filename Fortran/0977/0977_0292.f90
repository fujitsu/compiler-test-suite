call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
integer,parameter::pa=4
real(kind=4)::r
real(kind=8)::d
double precision::dd
real(kind=16)::q
r=3.7_4
d=3.8_8
dd=3.8_8
q=3.9_16
call s1(floor(r,1+0))
call s1(floor(d,1/1))
call s1(floor(dd,1/1))
call s1(floor(q,1*1))
call s2(floor(r,2_1))
call s2(floor(d,2_2))
call s2(floor(dd,2_2))
call s2(floor(q,2_8))
call s3(floor(r,pa))
call s3(floor(d,pa))
call s3(floor(d,kind(-1)))
call s3(floor(d,4))
call s3(floor(dd,pa))
call s3(floor(q,pa))
call s4(floor(r,8))
call s4(floor(d,8))
call s4(floor(dd,8))
call s4(floor(q,8))
end subroutine
subroutine s1(i1)
integer(kind=1)::i1
if(i1.ne.3_1) write(6,*) "NG"
end subroutine
subroutine s2(i2)
integer(kind=2)::i2
if(i2.ne.3_2) write(6,*) "NG"
end subroutine
subroutine s3(i4)
integer(kind=4)::i4
if(i4.ne.3_4) write(6,*) "NG"
end subroutine
subroutine s4(i8)
integer(kind=8)::i8
if(i8.ne.3_8) write(6,*) "NG"
end subroutine
subroutine bbbbb
integer,parameter::pa=4
real(kind=4)::r
real(kind=8)::d
double precision::dd
real(kind=16)::q
r=3.7_4
d=3.8_8
dd=3.8_8
q=3.9_16
call c1(ceiling(r,kind=1+0))
call c1(ceiling(d,kind=1/1))
call c1(ceiling(dd,kind=1/1))
call c1(ceiling(q,kind=1*1))
call c2(ceiling(r,kind=2_1))
call c2(ceiling(d,2_2))
call c2(ceiling(dd,2_2))
call c2(ceiling(q,2_8))
call c3(ceiling(kind=pa,a=r))
call c3(ceiling(d,pa))
call c3(ceiling(dd,pa))
call c3(ceiling(kind=pa,a=q))
call c4(ceiling(r,8))
call c4(ceiling(d,8))
call c4(ceiling(dd,8))
call c4(ceiling(q,8))
end subroutine
subroutine c1(i1)
integer(kind=1)::i1
if(i1.ne.4_1) write(6,*) "NG"
end subroutine
subroutine c2(i2)
integer(kind=2)::i2
if(i2.ne.4_2) write(6,*) "NG"
end subroutine
subroutine c3(i4)
integer(kind=4)::i4
if(i4.ne.4_4) write(6,*) "NG"
end subroutine
subroutine c4(i8)
integer(kind=8)::i8
if(i8.ne.4_8) write(6,*) "NG"
end subroutine
end
