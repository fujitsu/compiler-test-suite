subroutine sub(a,b)
integer,dimension(1:3,1:3,1:3) :: a
integer,dimension(1:4,1:4) :: b
if (sum(a) .eq. sum(b)) then
print *,"ok"
endif
end subroutine
integer,dimension(1:3,1:3,1:3) :: a
integer,dimension(1:4,1:4) :: b
a=1
b=1
call sub(a,b)
print *,'pass'
end

