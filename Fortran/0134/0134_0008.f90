subroutine s
type x1
 integer(1):: x1
 real(4):: x2
end type
type x2
 integer(1):: x1
 real(8):: x2
end type
type x3
 integer(1):: x1
 real(16):: x2
end type
type x4
 integer(1):: x1
 complex(4):: x2
end type
type x5
 integer(1):: x1
 complex(8):: x2
end type
type x6
 integer(1):: x1
 complex(16):: x2
end type
type(x1):: var01
type(x2):: var02
type(x3):: var03
type(x4):: var04
type(x5):: var05
type(x6):: var06
if (sizeof(var01)/=8)print *,1001,sizeof(var01)
if (sizeof(var02)/=16)print *,1002,sizeof(var02)
if (sizeof(var03)/=32)print *,1003,sizeof(var03)
if (sizeof(var04)/=12)print *,1004,sizeof(var04)
if (sizeof(var05)/=24)print *,1005,sizeof(var05)
if (sizeof(var06)/=48)print *,1006,sizeof(var06)
end
call s
print *,'pass'
end

