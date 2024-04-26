 type tya
  integer::ai1
  real::ar1
  integer::ai2=3
  integer::ai3=10
  real::ar2=4.0
  real::ar3
  integer::ai4
 end type
 type,extends(tya)::tyb
  real::br1=1.0
  logical::bl1
  character :: bc1='a'
  integer::bi1
  integer::bi2=20
 end type
 type,extends(tyb)::tyc
  type(tya)::ctya
  character::cc1=1_"c"
  character::cc2=1_"d"
  logical::cl1=.true.
  integer::ci1=1
  integer::ci2=2
 end type
 type,extends(tyc)::tyd
  type(tyc)::dtyc
  type(tyb)::dtyb
  type(tya)::dtya
 end type
type(tya)::uta1
type(tyb)::utb1
type(tyc)::utc1
type(tyd)::utd1

 utd1=tyd(utc1,utc1,utb1,uta1)

  i = utc1%ai1
  print *, i

 print *,'pass'

end
