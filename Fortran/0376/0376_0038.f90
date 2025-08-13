subroutine s1
type a1
  integer::v0
  integer::v1
end type
type,extends(a1)::a2
  character v2
end type
type(a1):: x1=a1(1,2)
type(a2):: v
v=a2(x1,'3')
write(13,*)v
call chk1
end
subroutine s2
type a2
  integer::v0
  integer::v1
  character v2
end type
type(a2):: v
v=a2(1,2,'3')
write(14,*)v
call chk2
end
call s1
call s2
print *,'pass'
end
subroutine chk1
rewind 13
read(13,*) i,ii,iii;if (i/=1)print *,'error-1'
if (ii/=2)print *,'error-2'
if (iii/=3)print *,'error-3'
end
subroutine chk2
rewind 14
read(14,*) i,ii,iii;if (i/=1)print *,'error-11'
if (ii/=2)print *,'error-12'
if (iii/=3)print *,'error-13'
end
