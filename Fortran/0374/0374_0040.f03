module mod
 type tya
  integer,private::ai1=1,ai2=2,ai3=3,ai4=4,ai5=5,ai6=6,ai7=7,ai8=8,ai9=9,ai10=10
 end type
 type,extends(tya)::tyb
  character,pointer::bc1
 end type
 type,extends(tyb)::tyc
 end type
 type,extends(tyc)::tyd
  real::dr1=1.0,dr2=2.0,dr3=3.0,dr4=4.0,dr5=5.0,dr6=6.0,dr7=7.0,dr8=8.0,dr9=9.0
 end type
 type,extends(tyd)::tye
  logical::el1=.true.,el2=.false.,el3=.true.,el4=.false.,el5=.true.,el6=.false.
 end type
end

use mod
type(tye)::ute1
character,target::ccc

ute1=tye(bc1=ccc)

 print *,'pass'

end
