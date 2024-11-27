call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
integer,parameter::pa=4
real(kind=4),dimension(5)::r
real(kind=8),dimension(5)::d
double precision,dimension(5)::dd
real(kind=16),dimension(5)::q
r=(/3.1_4,3.2_4,3.3_4,3.4_4,3.5_4/)
d=(/3.1_8,3.2_8,3.3_8,3.4_8,3.5_8/)
dd=(/3.1_8,3.2_8,3.3_8,3.4_8,3.5_8/)
q=(/3.1_16,3.2_16,3.3_16,3.4_16,3.5_16/)
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
call s3(floor(d,4))
call s3(floor(dd,pa))
call s3(floor(q,pa))
call s4(floor(r,8))
call s4(floor(d,8))
call s4(floor(dd,8))
call s4(floor(q,8))
end subroutine
subroutine s1(i1)
integer(kind=1),dimension(:)::i1
if(any(i1/=(/3_1,3_1,3_1,3_1,3_1/))) write(6,*) "NG"
end subroutine
subroutine s2(i2)
integer(kind=2),dimension(:)::i2
if(any(i2/=(/3_2,3_2,3_2,3_2,3_2/))) write(6,*) "NG"
end subroutine
subroutine s3(i4)
integer(kind=4),dimension(:)::i4
if(any(i4/=(/3_4,3_4,3_4,3_4,3_4/))) write(6,*) "NG"
end subroutine
subroutine s4(i8)
integer(kind=8),dimension(:)::i8
if(any(i8/=(/3_8,3_8,3_8,3_8,3_8/))) write(6,*) "NG"
end subroutine
subroutine bbbbb
integer,parameter::pa=4
real(kind=4),dimension(5)::r
real(kind=8),dimension(5)::d
real(kind=16),dimension(5)::q
r=(/3.1_4,3.2_4,3.3_4,3.4_4,3.5_4/)
d=(/3.1_8,3.2_8,3.3_8,3.4_8,3.5_8/)
q=(/3.1_16,3.2_16,3.3_16,3.4_16,3.5_16/)
call c1(ceiling(r,kind=1+0))
call c1(ceiling(d,kind=1/1))
call c1(ceiling(q,kind=1*1))
call c2(ceiling(r,kind=2_1))
call c2(ceiling(d,2_2))
call c2(ceiling(q,2_8))
call c3(ceiling(kind=pa,a=r))
call c3(ceiling(d,pa))
call c3(ceiling(kind=pa,a=q))
call c4(ceiling(r,8))
call c4(ceiling(d,8))
call c4(ceiling(q,8))
end subroutine
subroutine c1(i1)
integer(kind=1),dimension(5)::i1
if(any(i1/=(/4_1,4_1,4_1,4_1,4_1/))) write(6,*) "NG"
end subroutine
subroutine c2(i2)
integer(kind=2),dimension(5)::i2
if(any(i2/=(/4_2,4_2,4_2,4_2,4_2/))) write(6,*) "NG"
end subroutine
subroutine c3(i4)
integer(kind=4),dimension(:)::i4
if(any(i4/=(/4_4,4_4,4_4,4_4,4_4/))) write(6,*) "NG"
end subroutine
subroutine c4(i8)
integer(kind=8),dimension(:)::i8
if(any(i8/=(/4_8,4_8,4_8,4_8,4_8/))) write(6,*) "NG"
end subroutine
end
