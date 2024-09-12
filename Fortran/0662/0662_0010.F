#if (__unix &&__sparc) || _WIN32
print *,'pass'
end
module mmm
interface s
 module procedure s_1, s_2,s_4,s_8,ss1,ss2,ss4,ss8
end interface
subroutine s_1(a,b)
integer(1)::a,b
if(a.ne.b) call errtra
end subroutine
subroutine s_2(a,b)
integer(2)::a,b
if(a.ne.b) call errtra
end subroutine
subroutine s_4(a,b)
integer(4)::a,b
if(a.ne.b) call errtra
end subroutine
subroutine s_8(a,b)
integer(8)::a,b
if(a.ne.b) call errtra
end subroutine
subroutine ss1(a,b)
integer(1),dimension(:)::a,b
if(any(a/=b)) call errtra
end subroutine
subroutine ss2(a,b)
integer(2),dimension(:)::a,b
if(any(a/=b)) call errtra
end subroutine
subroutine ss4(a,b)
integer(4),dimension(:)::a,b
if(any(a/=b)) call errtra
end subroutine
subroutine ss8(a,b)
integer(8),dimension(:)::a,b
if(any(a/=b)) call errtra
end subroutine
end
subroutine zz1
use mmm
integer(1) pi1001,pi1002,pi1003,pi1004,pi1005,pi1006,pi1007,pi1008
integer(1) ri1001,ri1002,ri1003,ri1004,ri1005,ri1006,ri1007,ri1008
integer(2) pi2001,pi2002,pi2003,pi2004,pi2005,pi2006,pi2007,pi2008
integer(2) ri2001,ri2002,ri2003,ri2004,ri2005,ri2006,ri2007,ri2008
integer(4) pi4001,pi4002,pi4003,pi4004,pi4005,pi4006,pi4007,pi4008
integer(4) ri4001,ri4002,ri4003,ri4004,ri4005,ri4006,ri4007,ri4008
integer(8) pi8001,pi8002,pi8003,pi8004,pi8005,pi8006,pi8007,pi8008
integer(8) ri8001,ri8002,ri8003,ri8004,ri8005,ri8006,ri8007,ri8008
parameter(ri1001=lrshft(-1_1,-1_1))
parameter(ri1002=lrshft(-1_1,-2_1))
parameter(ri1003=lrshft(-1_1,-3_1))
parameter(ri1004=lrshft(-1_1,-4_1))
parameter(ri1005=lrshft(-1_1,-5_1))
parameter(ri1006=lrshft(-1_1,-6_1))
parameter(ri1007=lrshft(-1_1,-7_1))
parameter(ri1008=lrshft(-1_1,-8_1))

parameter(ri2001=lrshft(-1_2,-2_2))
parameter(ri2002=lrshft(-1_2,-4_2))
parameter(ri2003=lrshft(-1_2,-6_2))
parameter(ri2004=lrshft(-1_2,-8_2))
parameter(ri2005=lrshft(-1_2,-10_2))
parameter(ri2006=lrshft(-1_2,-12_2))
parameter(ri2007=lrshft(-1_2,-14_2))
parameter(ri2008=lrshft(-1_2,-16_2))

parameter(ri4001=lrshft(-1_4,-4_4))
parameter(ri4002=lrshft(-1_4,-8_4))
parameter(ri4003=lrshft(-1_4,-12_4))
parameter(ri4004=lrshft(-1_4,-16_4))
parameter(ri4005=lrshft(-1_4,-20_4))
parameter(ri4006=lrshft(-1_4,-24_4))
parameter(ri4007=lrshft(-1_4,-28_4))
parameter(ri4008=lrshft(-1_4,-32_4))

parameter(ri8001=lrshft(-1_8,-8_8))
parameter(ri8002=lrshft(-1_8,-16_8))
parameter(ri8003=lrshft(-1_8,-24_8))
parameter(ri8004=lrshft(-1_8,-32_8))
parameter(ri8005=lrshft(-1_8,-40_8))
parameter(ri8006=lrshft(-1_8,-48_8))
parameter(ri8007=lrshft(-1_8,-56_8))
parameter(ri8008=lrshft(-1_8,-64_8))

pi1001=-1;pi1002=-2;pi1003=-3;pi1004=-4;pi1005=-5;pi1006=-6;pi1007=-7;pi1008=-8
pi2001=-2;pi2002=-4;pi2003=-6;pi2004=-8;pi2005=-10;&
pi2006=-12;pi2007=-14;pi2008=-16
pi4001=-4;pi4002=-8;pi4003=-12;pi4004=-16;pi4005=-20;&
pi4006=-24;pi4007=-28;pi4008=-32
pi8001=-8;pi8002=-16;pi8003=-24;pi8004=-32;pi8005=-40;&
pi8006=-48;pi8007=-56;pi8008=-64

end

subroutine zz2
use mmm
integer(1) pi1001,pi1002,pi1003,pi1004,pi1005,pi1006,pi1007,pi1008
integer(1) ri1001,ri1002,ri1003,ri1004,ri1005,ri1006,ri1007,ri1008
integer(2) pi2001,pi2002,pi2003,pi2004,pi2005,pi2006,pi2007,pi2008
integer(2) ri2001,ri2002,ri2003,ri2004,ri2005,ri2006,ri2007,ri2008
integer(4) pi4001,pi4002,pi4003,pi4004,pi4005,pi4006,pi4007,pi4008
integer(4) ri4001,ri4002,ri4003,ri4004,ri4005,ri4006,ri4007,ri4008
integer(8) pi8001,pi8002,pi8003,pi8004,pi8005,pi8006,pi8007,pi8008
integer(8) ri8001,ri8002,ri8003,ri8004,ri8005,ri8006,ri8007,ri8008
parameter(ri1001=lrshft(1_1,1_1))
parameter(ri1002=lrshft(1_1,2_1))
parameter(ri1003=lrshft(1_1,3_1))
parameter(ri1004=lrshft(1_1,4_1))
parameter(ri1005=lrshft(1_1,5_1))
parameter(ri1006=lrshft(1_1,6_1))
parameter(ri1007=lrshft(1_1,7_1))
parameter(ri1008=lrshft(1_1,8_1))

parameter(ri2001=lrshft(1_2,2_2))
parameter(ri2002=lrshft(1_2,4_2))
parameter(ri2003=lrshft(1_2,6_2))
parameter(ri2004=lrshft(1_2,8_2))
parameter(ri2005=lrshft(1_2,10_2))
parameter(ri2006=lrshft(1_2,12_2))
parameter(ri2007=lrshft(1_2,14_2))
parameter(ri2008=lrshft(1_2,16_2))

parameter(ri4001=lrshft(1_4,4_4))
parameter(ri4002=lrshft(1_4,8_4))
parameter(ri4003=lrshft(1_4,12_4))
parameter(ri4004=lrshft(1_4,16_4))
parameter(ri4005=lrshft(1_4,20_4))
parameter(ri4006=lrshft(1_4,24_4))
parameter(ri4007=lrshft(1_4,28_4))
parameter(ri4008=lrshft(1_4,32_4))

parameter(ri8001=lrshft(1_8,8_8))
parameter(ri8002=lrshft(1_8,16_8))
parameter(ri8003=lrshft(1_8,24_8))
parameter(ri8004=lrshft(1_8,32_8))
parameter(ri8005=lrshft(1_8,40_8))
parameter(ri8006=lrshft(1_8,48_8))
parameter(ri8007=lrshft(1_8,56_8))
parameter(ri8008=lrshft(1_8,64_8))

pi1001=1;pi1002=2;pi1003=3;pi1004=4;pi1005=5;&
pi1006=6;pi1007=7;pi1008=8
pi2001=2;pi2002=4;pi2003=6;pi2004=8;pi2005=10;&
pi2006=12;pi2007=14;pi2008=16
pi4001=4;pi4002=8;pi4003=12;pi4004=16;pi4005=20;&
pi4006=24;pi4007=28;pi4008=32
pi8001=8;pi8002=16;pi8003=24;pi8004=32;pi8005=40;&
pi8006=48;pi8007=56;pi8008=64

end

subroutine zz3
use mmm
integer(1),dimension(1):: pi1001,pi1002,pi1003,pi1004,pi1005,&
pi1006,pi1007,pi1008
integer(1),dimension(1):: ri1001,ri1002,ri1003,ri1004,ri1005,&
ri1006,ri1007,ri1008
integer(2),dimension(1):: pi2001,pi2002,pi2003,pi2004,pi2005,&
pi2006,pi2007,pi2008
integer(2),dimension(1):: ri2001,ri2002,ri2003,ri2004,ri2005,&
ri2006,ri2007,ri2008
integer(4),dimension(1):: pi4001,pi4002,pi4003,pi4004,pi4005,&
pi4006,pi4007,pi4008
integer(4),dimension(1):: ri4001,ri4002,ri4003,ri4004,ri4005,&
ri4006,ri4007,ri4008
integer(8),dimension(1):: pi8001,pi8002,pi8003,pi8004,pi8005,&
pi8006,pi8007,pi8008
integer(8),dimension(1):: ri8001,ri8002,ri8003,ri8004,ri8005,&
ri8006,ri8007,ri8008
parameter(ri1001=lrshft((/1_1/),1_1))
parameter(ri1002=lrshft((/1_1/),2_1))
parameter(ri1003=lrshft((/1_1/),3_1))
parameter(ri1004=lrshft((/1_1/),4_1))
parameter(ri1005=lrshft((/1_1/),5_1))
parameter(ri1006=lrshft((/1_1/),6_1))
parameter(ri1007=lrshft((/1_1/),7_1))
parameter(ri1008=lrshft((/1_1/),8_1))

parameter(ri2001=lrshft((/1_2/),2_2))
parameter(ri2002=lrshft((/1_2/),4_2))
parameter(ri2003=lrshft((/1_2/),6_2))
parameter(ri2004=lrshft((/1_2/),8_2))
parameter(ri2005=lrshft((/1_2/),10_2))
parameter(ri2006=lrshft((/1_2/),12_2))
parameter(ri2007=lrshft((/1_2/),14_2))
parameter(ri2008=lrshft((/1_2/),16_2))

parameter(ri4001=lrshft((/1_4/),4_4))
parameter(ri4002=lrshft((/1_4/),8_4))
parameter(ri4003=lrshft((/1_4/),12_4))
parameter(ri4004=lrshft((/1_4/),16_4))
parameter(ri4005=lrshft((/1_4/),20_4))
parameter(ri4006=lrshft((/1_4/),24_4))
parameter(ri4007=lrshft((/1_4/),28_4))
parameter(ri4008=lrshft((/1_4/),32_4))

parameter(ri8001=lrshft((/1_8/),8_8))
parameter(ri8002=lrshft((/1_8/),16_8))
parameter(ri8003=lrshft((/1_8/),24_8))
parameter(ri8004=lrshft((/1_8/),32_8))
parameter(ri8005=lrshft((/1_8/),40_8))
parameter(ri8006=lrshft((/1_8/),48_8))
parameter(ri8007=lrshft((/1_8/),56_8))
parameter(ri8008=lrshft((/1_8/),64_8))

pi1001=1;pi1002=2;pi1003=3;pi1004=4;pi1005=5;&
pi1006=6;pi1007=7;pi1008=8
pi2001=2;pi2002=4;pi2003=6;pi2004=8;pi2005=10;&
pi2006=12;pi2007=14;pi2008=16
pi4001=4;pi4002=8;pi4003=12;pi4004=16;pi4005=20;&
pi4006=24;pi4007=28;pi4008=32
pi8001=8;pi8002=16;pi8003=24;pi8004=32;pi8005=40;&
pi8006=48;pi8007=56;pi8008=64

#if
#endif

end

subroutine zz4
use mmm
integer(1),dimension(1):: pi1001,pi1002,pi1003,pi1004,pi1005,&
pi1006,pi1007,pi1008
integer(1),dimension(1):: ri1001,ri1002,ri1003,ri1004,ri1005,&
ri1006,ri1007,ri1008
integer(2),dimension(1):: pi2001,pi2002,pi2003,pi2004,pi2005,&
pi2006,pi2007,pi2008
integer(2),dimension(1):: ri2001,ri2002,ri2003,ri2004,ri2005,&
ri2006,ri2007,ri2008
integer(4),dimension(1):: pi4001,pi4002,pi4003,pi4004,pi4005,&
pi4006,pi4007,pi4008
integer(4),dimension(1):: ri4001,ri4002,ri4003,ri4004,ri4005,&
ri4006,ri4007,ri4008
integer(8),dimension(1):: pi8001,pi8002,pi8003,pi8004,pi8005,&
pi8006,pi8007,pi8008
integer(8),dimension(1):: ri8001,ri8002,ri8003,ri8004,ri8005,&
ri8006,ri8007,ri8008
parameter(ri1001=lrshft(1_1,(/1_1/)))
parameter(ri1002=lrshft(1_1,(/2_1/)))
parameter(ri1003=lrshft(1_1,(/3_1/)))
parameter(ri1004=lrshft(1_1,(/4_1/)))
parameter(ri1005=lrshft(1_1,(/5_1/)))
parameter(ri1006=lrshft(1_1,(/6_1/)))
parameter(ri1007=lrshft(1_1,(/7_1/)))
parameter(ri1008=lrshft(1_1,(/8_1/)))

parameter(ri2001=lrshft(1_2,(/2_2/)))
parameter(ri2002=lrshft(1_2,(/4_2/)))
parameter(ri2003=lrshft(1_2,(/6_2/)))
parameter(ri2004=lrshft(1_2,(/8_2/)))
parameter(ri2005=lrshft(1_2,(/10_2/)))
parameter(ri2006=lrshft(1_2,(/12_2/)))
parameter(ri2007=lrshft(1_2,(/14_2/)))
parameter(ri2008=lrshft(1_2,(/16_2/)))

parameter(ri4001=lrshft(1_4,(/4_4/)))
parameter(ri4002=lrshft(1_4,(/8_4/)))
parameter(ri4003=lrshft(1_4,(/12_4/)))
parameter(ri4004=lrshft(1_4,(/16_4/)))
parameter(ri4005=lrshft(1_4,(/20_4/)))
parameter(ri4006=lrshft(1_4,(/24_4/)))
parameter(ri4007=lrshft(1_4,(/28_4/)))
parameter(ri4008=lrshft(1_4,(/32_4/)))

parameter(ri8001=lrshft(1_8,(/8_8/)))
parameter(ri8002=lrshft(1_8,(/16_8/)))
parameter(ri8003=lrshft(1_8,(/24_8/)))
parameter(ri8004=lrshft(1_8,(/32_8/)))
parameter(ri8005=lrshft(1_8,(/40_8/)))
parameter(ri8006=lrshft(1_8,(/48_8/)))
parameter(ri8007=lrshft(1_8,(/56_8/)))
parameter(ri8008=lrshft(1_8,(/64_8/)))

pi1001=1;pi1002=2;pi1003=3;pi1004=4;pi1005=5;&
pi1006=6;pi1007=7;pi1008=8
pi2001=2;pi2002=4;pi2003=6;pi2004=8;pi2005=10;&
pi2006=12;pi2007=14;pi2008=16
pi4001=4;pi4002=8;pi4003=12;pi4004=16;pi4005=20;&
pi4006=24;pi4007=28;pi4008=32
pi8001=8;pi8002=16;pi8003=24;pi8004=32;pi8005=40;&
pi8006=48;pi8007=56;pi8008=64

#if
#endif

#if
#endif

#if
#endif
end

subroutine zz5
use mmm
integer(1),dimension(1):: pi1001,pi1002,pi1003,pi1004,pi1005,&
pi1006,pi1007,pi1008
integer(1),dimension(1):: ri1001,ri1002,ri1003,ri1004,ri1005,&
ri1006,ri1007,ri1008
integer(2),dimension(1):: pi2001,pi2002,pi2003,pi2004,pi2005,&
pi2006,pi2007,pi2008
integer(2),dimension(1):: ri2001,ri2002,ri2003,ri2004,ri2005,&
ri2006,ri2007,ri2008
integer(4),dimension(1):: pi4001,pi4002,pi4003,pi4004,pi4005,&
pi4006,pi4007,pi4008
integer(4),dimension(1):: ri4001,ri4002,ri4003,ri4004,ri4005,&
ri4006,ri4007,ri4008
integer(8),dimension(1):: pi8001,pi8002,pi8003,pi8004,pi8005,&
pi8006,pi8007,pi8008
integer(8),dimension(1):: ri8001,ri8002,ri8003,ri8004,ri8005,&
ri8006,ri8007,ri8008
parameter(ri1001=lrshft((/-1_1/),-1_1))
parameter(ri1002=lrshft((/-1_1/),-2_1))
parameter(ri1003=lrshft((/-1_1/),-3_1))
parameter(ri1004=lrshft((/-1_1/),-4_1))
parameter(ri1005=lrshft((/-1_1/),-5_1))
parameter(ri1006=lrshft((/-1_1/),-6_1))
parameter(ri1007=lrshft((/-1_1/),-7_1))
parameter(ri1008=lrshft((/-1_1/),-8_1))

parameter(ri2001=lrshft((/-1_2/),-2_2))
parameter(ri2002=lrshft((/-1_2/),-4_2))
parameter(ri2003=lrshft((/-1_2/),-6_2))
parameter(ri2004=lrshft((/-1_2/),-8_2))
parameter(ri2005=lrshft((/-1_2/),-10_2))
parameter(ri2006=lrshft((/-1_2/),-12_2))
parameter(ri2007=lrshft((/-1_2/),-14_2))
parameter(ri2008=lrshft((/-1_2/),-16_2))

parameter(ri4001=lrshft((/-1_4/),-4_4))
parameter(ri4002=lrshft((/-1_4/),-8_4))
parameter(ri4003=lrshft((/-1_4/),-12_4))
parameter(ri4004=lrshft((/-1_4/),-16_4))
parameter(ri4005=lrshft((/-1_4/),-20_4))
parameter(ri4006=lrshft((/-1_4/),-24_4))
parameter(ri4007=lrshft((/-1_4/),-28_4))
parameter(ri4008=lrshft((/-1_4/),-32_4))

parameter(ri8001=lrshft((/-1_8/),-8_8))
parameter(ri8002=lrshft((/-1_8/),-16_8))
parameter(ri8003=lrshft((/-1_8/),-24_8))
parameter(ri8004=lrshft((/-1_8/),-32_8))
parameter(ri8005=lrshft((/-1_8/),-40_8))
parameter(ri8006=lrshft((/-1_8/),-48_8))
parameter(ri8007=lrshft((/-1_8/),-56_8))
parameter(ri8008=lrshft((/-1_8/),-64_8))

pi1001=-1;pi1002=-2;pi1003=-3;pi1004=-4;pi1005=-5;&
pi1006=-6;pi1007=-7;pi1008=-8
pi2001=-2;pi2002=-4;pi2003=-6;pi2004=-8;pi2005=-10;&
pi2006=-12;pi2007=-14;pi2008=-16
pi4001=-4;pi4002=-8;pi4003=-12;pi4004=-16;pi4005=-20;&
pi4006=-24;pi4007=-28;pi4008=-32
pi8001=-8;pi8002=-16;pi8003=-24;pi8004=-32;pi8005=-40;&
pi8006=-48;pi8007=-56;pi8008=-64

#if
#endif

end

subroutine zz6
use mmm
integer(1),dimension(1):: pi1001,pi1002,pi1003,pi1004,pi1005,&
pi1006,pi1007,pi1008
integer(1),dimension(1):: ri1001,ri1002,ri1003,ri1004,ri1005,&
ri1006,ri1007,ri1008
integer(2),dimension(1):: pi2001,pi2002,pi2003,pi2004,pi2005,&
pi2006,pi2007,pi2008
integer(2),dimension(1):: ri2001,ri2002,ri2003,ri2004,ri2005,&
ri2006,ri2007,ri2008
integer(4),dimension(1):: pi4001,pi4002,pi4003,pi4004,pi4005,&
pi4006,pi4007,pi4008
integer(4),dimension(1):: ri4001,ri4002,ri4003,ri4004,ri4005,&
ri4006,ri4007,ri4008
integer(8),dimension(1):: pi8001,pi8002,pi8003,pi8004,pi8005,&
pi8006,pi8007,pi8008
integer(8),dimension(1):: ri8001,ri8002,ri8003,ri8004,ri8005,&
ri8006,ri8007,ri8008
parameter(ri1001=lrshft(-1_1,(/-1_1/)))
parameter(ri1002=lrshft(-1_1,(/-2_1/)))
parameter(ri1003=lrshft(-1_1,(/-3_1/)))
parameter(ri1004=lrshft(-1_1,(/-4_1/)))
parameter(ri1005=lrshft(-1_1,(/-5_1/)))
parameter(ri1006=lrshft(-1_1,(/-6_1/)))
parameter(ri1007=lrshft(-1_1,(/-7_1/)))
parameter(ri1008=lrshft(-1_1,(/-8_1/)))

parameter(ri2001=lrshft(-1_2,(/-2_2/)))
parameter(ri2002=lrshft(-1_2,(/-4_2/)))
parameter(ri2003=lrshft(-1_2,(/-6_2/)))
parameter(ri2004=lrshft(-1_2,(/-8_2/)))
parameter(ri2005=lrshft(-1_2,(/-10_2/)))
parameter(ri2006=lrshft(-1_2,(/-12_2/)))
parameter(ri2007=lrshft(-1_2,(/-14_2/)))
parameter(ri2008=lrshft(-1_2,(/-16_2/)))

parameter(ri4001=lrshft(-1_4,(/-4_4/)))
parameter(ri4002=lrshft(-1_4,(/-8_4/)))
parameter(ri4003=lrshft(-1_4,(/-12_4/)))
parameter(ri4004=lrshft(-1_4,(/-16_4/)))
parameter(ri4005=lrshft(-1_4,(/-20_4/)))
parameter(ri4006=lrshft(-1_4,(/-24_4/)))
parameter(ri4007=lrshft(-1_4,(/-28_4/)))
parameter(ri4008=lrshft(-1_4,(/-32_4/)))

parameter(ri8001=lrshft(-1_8,(/-8_8/)))
parameter(ri8002=lrshft(-1_8,(/-16_8/)))
parameter(ri8003=lrshft(-1_8,(/-24_8/)))
parameter(ri8004=lrshft(-1_8,(/-32_8/)))
parameter(ri8005=lrshft(-1_8,(/-40_8/)))
parameter(ri8006=lrshft(-1_8,(/-48_8/)))
parameter(ri8007=lrshft(-1_8,(/-56_8/)))
parameter(ri8008=lrshft(-1_8,(/-64_8/)))

pi1001=-1;pi1002=-2;pi1003=-3;pi1004=-4;pi1005=-5;&
pi1006=-6;pi1007=-7;pi1008=-8
pi2001=-2;pi2002=-4;pi2003=-6;pi2004=-8;pi2005=-10;&
pi2006=-12;pi2007=-14;pi2008=-16
pi4001=-4;pi4002=-8;pi4003=-12;pi4004=-16;pi4005=-20;&
pi4006=-24;pi4007=-28;pi4008=-32
pi8001=-8;pi8002=-16;pi8003=-24;pi8004=-32;pi8005=-40;&
pi8006=-48;pi8007=-56;pi8008=-64

#if
#endif

#if
#endif

#if
#endif
end
#else
print *,'pass'
end
#endif
