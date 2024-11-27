call test01()
print *,'pass'
end

subroutine test01()
type ty01
   integer :: a(1)=1
end type
type ty02; type (ty01) :: ta02(1) ;end type
type ty03; type (ty02) :: ta03(1) ;end type
type ty04; type (ty03) :: ta04(1) ;end type
type ty05; type (ty04) :: ta05(1) ;end type
type ty06; type (ty05) :: ta06(1) ;end type
type ty07; type (ty06) :: ta07(1) ;end type
type ty08; type (ty07) :: ta08(1) ;end type
type ty09; type (ty08) :: ta09(1) ;end type
type ty10; type (ty09) :: ta10(1) ;end type
type ty11; type (ty10) :: ta11(1) ;end type
type ty12; type (ty11) :: ta12(1) ;end type
type ty13; type (ty12) :: ta13(1) ;end type
type ty14; type (ty13) :: ta14(1) ;end type
type ty15; type (ty14) :: ta15(1) ;end type
type ty16; type (ty15) :: ta16(1) ;end type
type ty17; type (ty16) :: ta17(1) ;end type
type ty18; type (ty17) :: ta18(1) ;end type
type ty19; type (ty18) :: ta19(1) ;end type
type ty20; type (ty19) :: ta20(1) ;end type
type ty21; type (ty20) :: ta21(1) ;end type
type ty22; type (ty21) :: ta22(1) ;end type
type ty23; type (ty22) :: ta23(1) ;end type
type ty24; type (ty23) :: ta24(1) ;end type
type (ty24) :: ta(1) 
if (ta(1)%ta24(1)%ta23(1)%ta22(1)%ta21(1)%ta20(1)%ta19(1)%ta18(1) &
%ta17(1)%ta16(1)%ta15(1)%ta14(1)%ta13(1)%ta12(1)%ta11(1)%ta10(1) &
%ta09(1)%ta08(1)%ta07(1)%ta06(1)%ta05(1)%ta04(1)%ta03(1)%ta02(1)%a(1) &
.ne.1) write(6,*) "NG"
end
