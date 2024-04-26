block
real :: rr
external :: int,abs
if(int(23.3)==24) print*,"pass"
rr=abs(5.3)
if(int(rr)/=7) print*,101
end block

if(int(2.4)/=2) print*,102
end

function int(d)
 real::d
 integer :: int
 int=d+1
end function

real function abs(d)
real :: d
abs=int(d)+1+0.5000000
end function
