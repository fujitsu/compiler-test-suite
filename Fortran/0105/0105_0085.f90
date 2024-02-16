subroutine s1
type x1
 real(8)::r81(3),r82(3,4),r83(4,3)
end type
type x2
 real(8)::r8(4)
end type
type(x1)::v1
type(x2)::v2
v1%r81=reshape((/(i,i=11,14)/),(/3/))
v1%r82=reshape((/(i,i=21,32)/),(/3,4/))
v1%r83=reshape((/(i,i=21,32)/),(/4,3/))
v2%r8=matmul(v1%r81,v1%r82)
if (any(abs((/v2%r8/)-(/794,902,1010,1118/))>10.))print *,101
v2%r8=matmul(v1%r81,transpose(v1%r83))
if (any(abs((/v2%r8/)-(/908,944,980,1016/))>10.))print *,201
end
subroutine s2
type x1
real(8)::r81(4,3),r82(3),r83(3,4)
end type
type x2
real(8)::r8(4)
end type
type(x1)::v1
type(x2)::v2
v1%r81=reshape((/(i,i=21,32)/),(/4,3/))
v1%r82=reshape((/(i,i=11,14)/),(/3/))
v1%r83=reshape((/(i,i=21,32)/),(/3,4/))
v2%r8=matmul(v1%r81,v1%r82)
if (any(abs((/v2%r8/)-(/908,944,980,1016/))>10.))print *,2
v2%r8=matmul(transpose(v1%r83),v1%r82)
if (any(abs((/v2%r8/)-(/794,902,1010,1118/))>10.))print *,1
end
subroutine s3
type x1
real(8)::r81(4,3),r82(3,2),r83(2,3)
end type
type x2
real(8)::r8(4,2)
end type
type(x1)::v1
type(x2)::v2
v1%r81=reshape((/(i,i=21,32)/),(/4,3/))
v1%r82=reshape((/(i,i=11,16)/),(/3,2/))
v1%r83=reshape((/(i,i=21,26)/),(/2,3/))
v2%r8=matmul(v1%r81,v1%r82)
if (any(abs((/v2%r8/)-(/908,944,980,1016,1133,1178,1223,1268/))>10.))print *,301
v2%r8=matmul(v1%r81,transpose(v1%r83))
if (any(abs((/v2%r8/)-(/1741,1810,1879,1948,1816,1888,1960,2032/))>10.))print *,302
end
call s1
call s2
call s3
print *,'pass'
end
