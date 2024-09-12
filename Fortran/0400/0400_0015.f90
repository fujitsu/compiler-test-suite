module m1
contains
subroutine ss(pp1,pp2,pp4,pp8)
procedure(xi2),pointer:: pp2
procedure(xi1),pointer:: pp1
procedure(xi4)        :: pp4
procedure(xi8)        :: pp8
procedure(xl2),pointer:: pl2
procedure(xl1),pointer:: pl1
interface gnr
  procedure :: pp1,pp2,pp4,pp8,pl1,pl2,pl4,pl8
end interface
pl1=>xl1
pl2=>xl2
call gnr(1_1)
call gnr(2_2)
call gnr(4_4)
call gnr(8_8)
call gnr(1_1,1_1)
call gnr(2_2,2_2)
call gnr(4_4,4_4)
call gnr(8_8,8_8)
end subroutine
  subroutine xi1(k1)
    integer(1)::k1
    if (k1/=1) print *,101
    write(1,*) 101
  end subroutine
  subroutine xi2(k1)
    integer(2)::k1
    if (k1/=2) print *,102
    write(1,*) 102
  end subroutine
  subroutine xi4(k1)
    integer(4)::k1
    if (k1/=4) print *,104
    write(1,*) 104
  end subroutine
  subroutine xi8(k1)
    integer(8)::k1
    if (k1/=8) print *,108
    write(1,*) 108
  end subroutine
  subroutine xl1(k1,kk1)
    integer(1)::k1,kk1
    if (k1/=1) print *,111
    if (kk1/=1) print *,112
    write(1,*) 111
  end subroutine
  subroutine xl2(k1,kk1)
    integer(2)::k1,kk1
    if (k1/=2) print *,113
    if (kk1/=2) print *,114
    write(1,*) 112
  end subroutine
  subroutine xl4(k1,kk1)
  entry      pl4(k1,kk1)
    integer(4)::k1,kk1
    if (k1/=4) print *,115
    if (kk1/=4) print *,116
    write(1,*) 114
  end subroutine
  subroutine xl8(k1,kk1)
  entry      pl8(k1,kk1)
    integer(8)::k1,kk1
    if (k1/=8) print *,117
    if (kk1/=8) print *,118
    write(1,*) 118
  end subroutine
end
subroutine s1
use m1
procedure(xi1),pointer:: pp1
procedure(xi2),pointer:: pp2
procedure(xi4),pointer:: pp4
procedure(xi8),pointer:: pp8
pp1=>xi1
pp2=>xi2
pp4=>xi4
pp8=>xi8
call ss(pp1,pp2,pp4,pp8)
call chk
contains
subroutine chk
rewind 1
read(1,*) i;if (i/=101) print *,90001
read(1,*) i;if (i/=102) print *,90002
read(1,*) i;if (i/=104) print *,90004
read(1,*) i;if (i/=108) print *,90008
read(1,*) i;if (i/=111) print *,90011
read(1,*) i;if (i/=112) print *,90012
read(1,*) i;if (i/=114) print *,90014
read(1,*) i;if (i/=118) print *,90018
read(1,*,end=1) i
print *,9999
1 return
end subroutine
end
call s1
print *,'pass'
end


