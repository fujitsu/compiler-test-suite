subroutine x(d)
character*1 c/'1'/
intrinsic sin
external ifun,d
integer d
call s0
i=if()
if (i/=1)print *,101,i
i=if2(1,'1'//c)
if (i/=2)print *,102,i
i=d()
if (i/=3)print *,103,i
call s1(*1,sin,ifun,d)
1 continue
end
external kf
call x(kf)
print *,'pass'
end
function kf()
kf=3
end
subroutine s0
end
function if()
if = 1
end
function ifun()
ifun=4
end
function if2(i,c)
character(*)::c
if (c/='11')print *,201,c
if (i/=1)print *,202,i
if2=2
end
subroutine s1(*,sx,if,ik)
if (abs(sx(.1)-sin(.1))>0.0001)print *,301,sx(.1)-sin(.1)
if (if()/=4)print *,302,ifun()
if (ik()/=3)print *,303,kf()
end



