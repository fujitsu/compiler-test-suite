module mod
 type tya
  integer::ai1
  real::ar1
  integer::ai2=3
  integer::ai3=10
 end type
 type,extends(tya)::tyb
  real::br1=1.0
  logical::bl1
 end type
 type,extends(tyb)::tyc
  type(tya)::ctya
  character::cc1=1_"c"
  character::cc2=1_"d"
 end type
 type,extends(tyc)::tyd
  type(tyc)::dtyc
  type(tyb)::dtyb
  type(tya)::dtya
 end type
end
use mod
type(tya)::uta1
type(tyb)::utb1
type(tyc)::utc1
type(tyd)::utd1

 utd1=tyd(tyc(br1=3.0,ctya=tya(ai1=10,ar1=2.0),ar1=2.0,bl1=.false.,ai1=0),tyc(10,2.0,30,40,9.0,.false.,tya(10,2.0,30,40)),tyb(ai1=100,ar1=20.0,bl1=.false.),tya(10,2.0,30,40))

 print *,'pass'

end
