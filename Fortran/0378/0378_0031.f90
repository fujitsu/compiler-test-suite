integer(1) :: x1
integer(8) :: x4
real(16)   :: x7
complex(16) :: x10
x1=1
x4=4
x7=3
x10=(8,9)
if (kind((/complex(8):: x1/))/=8)print *,2001
if (kind((/complex(8):: x4/))/=8)print *,2002
if (kind((/complex(8):: x7/))/=8)print *,2003
if (kind((/complex(8):: x10/))/=8)print *,2004
print *,'pass'
end
