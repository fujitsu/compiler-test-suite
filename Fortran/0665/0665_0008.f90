call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
call test13()
call test14()
call test15()
call test16()
call test17()
call test18()
call test19()
call test20()
print *,'pass'
end
subroutine test01()
type ty1
integer(kind=1)   :: i01 = 0_1
integer(kind=2)   :: i02 = 0_1
integer(kind=4)   :: i03 = 0_1
integer(kind=8)   :: i04 = 0_1
real(kind=4)      :: i05 = 0_1
real(kind=8)      :: i06 = 0_1
real(kind=16)     :: i07 = 0_1
complex(kind=4)   :: i08 = 0_1
complex(kind=8)   :: i09 = 0_1
complex(kind=16)  :: i10 = 0_1
end type 
type(ty1) :: str
if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test02()
type ty1
integer(kind=1)   :: i01 = 0_2
integer(kind=2)   :: i02 = 0_2
integer(kind=4)   :: i03 = 0_2
integer(kind=8)   :: i04 = 0_2
real(kind=4)      :: i05 = 0_2
real(kind=8)      :: i06 = 0_2
real(kind=16)     :: i07 = 0_2
complex(kind=4)   :: i08 = 0_2
complex(kind=8)   :: i09 = 0_2
complex(kind=16)  :: i10 = 0_2
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test03()
type ty1
integer(kind=1)   :: i01 = 0_4
integer(kind=2)   :: i02 = 0_4
integer(kind=4)   :: i03 = 0_4
integer(kind=8)   :: i04 = 0_4
real(kind=4)      :: i05 = 0_4
real(kind=8)      :: i06 = 0_4
real(kind=16)     :: i07 = 0_4
complex(kind=4)   :: i08 = 0_4
complex(kind=8)   :: i09 = 0_4
complex(kind=16)  :: i10 = 0_4
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test04()
type ty1
integer(kind=1)   :: i01 = 0_8
integer(kind=2)   :: i02 = 0_8
integer(kind=4)   :: i03 = 0_8
integer(kind=8)   :: i04 = 0_8
real(kind=4)      :: i05 = 0_8
real(kind=8)      :: i06 = 0_8
real(kind=16)     :: i07 = 0_8
complex(kind=4)   :: i08 = 0_8
complex(kind=8)   :: i09 = 0_8
complex(kind=16)  :: i10 = 0_8
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test05()
type ty1
integer(kind=1)   :: i01 = 0.0_4
integer(kind=2)   :: i02 = 0.0_4
integer(kind=4)   :: i03 = 0.0_4
integer(kind=8)   :: i04 = 0.0_4
real(kind=4)      :: i05 = 0.0_4
real(kind=8)      :: i06 = 0.0_4
real(kind=16)     :: i07 = 0.0_4
complex(kind=4)   :: i08 = 0.0_4
complex(kind=8)   :: i09 = 0.0_4
complex(kind=16)  :: i10 = 0.0_4
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test06()
type ty1
integer(kind=1)   :: i01 = 0.0_8
integer(kind=2)   :: i02 = 0.0_8
integer(kind=4)   :: i03 = 0.0_8
integer(kind=8)   :: i04 = 0.0_8
real(kind=4)      :: i05 = 0.0_8
real(kind=8)      :: i06 = 0.0_8
real(kind=16)     :: i07 = 0.0_8
complex(kind=4)   :: i08 = 0.0_8
complex(kind=8)   :: i09 = 0.0_8
complex(kind=16)  :: i10 = 0.0_8
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test07()
type ty1
integer(kind=1)   :: i01 = 0.0_16
integer(kind=2)   :: i02 = 0.0_16
integer(kind=4)   :: i03 = 0.0_16
integer(kind=8)   :: i04 = 0.0_16
real(kind=4)      :: i05 = 0.0_16
real(kind=8)      :: i06 = 0.0_16
real(kind=16)     :: i07 = 0.0_16
complex(kind=4)   :: i08 = 0.0_16
complex(kind=8)   :: i09 = 0.0_16
complex(kind=16)  :: i10 = 0.0_16
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test08()
type ty1
integer(kind=1)   :: i01 = (0.0_4 ,0.0_4 )
integer(kind=2)   :: i02 = (0.0_4 ,0.0_4 )
integer(kind=4)   :: i03 = (0.0_4 ,0.0_4 )
integer(kind=8)   :: i04 = (0.0_4 ,0.0_4 )
real(kind=4)      :: i05 = (0.0_4 ,0.0_4 )
real(kind=8)      :: i06 = (0.0_4 ,0.0_4 )
real(kind=16)     :: i07 = (0.0_4 ,0.0_4 )
complex(kind=4)   :: i08 = (0.0_4 ,0.0_4 )
complex(kind=8)   :: i09 = (0.0_4 ,0.0_4 )
complex(kind=16)  :: i10 = (0.0_4 ,0.0_4 )
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test09()
type ty1
integer(kind=1)   :: i01 = (0.0_8 ,0.0_8 )
integer(kind=2)   :: i02 = (0.0_8 ,0.0_8 )
integer(kind=4)   :: i03 = (0.0_8 ,0.0_8 )
integer(kind=8)   :: i04 = (0.0_8 ,0.0_8 )
real(kind=4)      :: i05 = (0.0_8 ,0.0_8 )
real(kind=8)      :: i06 = (0.0_8 ,0.0_8 )
real(kind=16)     :: i07 = (0.0_8 ,0.0_8 )
complex(kind=4)   :: i08 = (0.0_8 ,0.0_8 )
complex(kind=8)   :: i09 = (0.0_8 ,0.0_8 )
complex(kind=16)  :: i10 = (0.0_8 ,0.0_8 )
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test10()
type ty1
integer(kind=1)   :: i01 = (0.0_16,0.0_16)
integer(kind=2)   :: i02 = (0.0_16,0.0_16)
integer(kind=4)   :: i03 = (0.0_16,0.0_16)
integer(kind=8)   :: i04 = (0.0_16,0.0_16)
real(kind=4)      :: i05 = (0.0_16,0.0_16)
real(kind=8)      :: i06 = (0.0_16,0.0_16)
real(kind=16)     :: i07 = (0.0_16,0.0_16)
complex(kind=4)   :: i08 = (0.0_16,0.0_16)
complex(kind=8)   :: i09 = (0.0_16,0.0_16)
complex(kind=16)  :: i10 = (0.0_16,0.0_16)
end type 
type(ty1) :: str

if (str%i01.ne.0_1) call errtra
if (str%i02.ne.0_2) call errtra
if (str%i03.ne.0_4) call errtra
if (str%i04.ne.0_8) call errtra
if (str%i05.ne.0.0_4) call errtra
if (str%i06.ne.0.0_8) call errtra
if (str%i07.ne.0.0_16) call errtra
if (str%i08.ne.(0.0_4,0.0_4)) call errtra
if (str%i09.ne.(0.0_8,0.0_8)) call errtra
if (str%i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine test11()
type ty1
integer(kind=1)   :: i01(3) = 0_1
integer(kind=2)   :: i02(3) = 0_1
integer(kind=4)   :: i03(3) = 0_1
integer(kind=8)   :: i04(3) = 0_1
real(kind=4)      :: i05(3) = 0_1
real(kind=8)      :: i06(3) = 0_1
real(kind=16)     :: i07(3) = 0_1
complex(kind=4)   :: i08(3) = 0_1
complex(kind=8)   :: i09(3) = 0_1
complex(kind=16)  :: i10(3) = 0_1
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test12()
type ty1
integer(kind=1)   :: i01(3) = 0_2
integer(kind=2)   :: i02(3) = 0_2
integer(kind=4)   :: i03(3) = 0_2
integer(kind=8)   :: i04(3) = 0_2
real(kind=4)      :: i05(3) = 0_2
real(kind=8)      :: i06(3) = 0_2
real(kind=16)     :: i07(3) = 0_2
complex(kind=4)   :: i08(3) = 0_2
complex(kind=8)   :: i09(3) = 0_2
complex(kind=16)  :: i10(3) = 0_2
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test13()
type ty1
integer(kind=1)   :: i01(3) = 0_4
integer(kind=2)   :: i02(3) = 0_4
integer(kind=4)   :: i03(3) = 0_4
integer(kind=8)   :: i04(3) = 0_4
real(kind=4)      :: i05(3) = 0_4
real(kind=8)      :: i06(3) = 0_4
real(kind=16)     :: i07(3) = 0_4
complex(kind=4)   :: i08(3) = 0_4
complex(kind=8)   :: i09(3) = 0_4
complex(kind=16)  :: i10(3) = 0_4
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test14()
type ty1
integer(kind=1)   :: i01(3) = 0_8
integer(kind=2)   :: i02(3) = 0_8
integer(kind=4)   :: i03(3) = 0_8
integer(kind=8)   :: i04(3) = 0_8
real(kind=4)      :: i05(3) = 0_8
real(kind=8)      :: i06(3) = 0_8
real(kind=16)     :: i07(3) = 0_8
complex(kind=4)   :: i08(3) = 0_8
complex(kind=8)   :: i09(3) = 0_8
complex(kind=16)  :: i10(3) = 0_8
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test15()
type ty1
integer(kind=1)   :: i01(3) = 0.0_4
integer(kind=2)   :: i02(3) = 0.0_4
integer(kind=4)   :: i03(3) = 0.0_4
integer(kind=8)   :: i04(3) = 0.0_4
real(kind=4)      :: i05(3) = 0.0_4
real(kind=8)      :: i06(3) = 0.0_4
real(kind=16)     :: i07(3) = 0.0_4
complex(kind=4)   :: i08(3) = 0.0_4
complex(kind=8)   :: i09(3) = 0.0_4
complex(kind=16)  :: i10(3) = 0.0_4
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test16()
type ty1
integer(kind=1)   :: i01(3) = 0.0_8
integer(kind=2)   :: i02(3) = 0.0_8
integer(kind=4)   :: i03(3) = 0.0_8
integer(kind=8)   :: i04(3) = 0.0_8
real(kind=4)      :: i05(3) = 0.0_8
real(kind=8)      :: i06(3) = 0.0_8
real(kind=16)     :: i07(3) = 0.0_8
complex(kind=4)   :: i08(3) = 0.0_8
complex(kind=8)   :: i09(3) = 0.0_8
complex(kind=16)  :: i10(3) = 0.0_8
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test17()
type ty1
integer(kind=1)   :: i01(3) = 0.0_16
integer(kind=2)   :: i02(3) = 0.0_16
integer(kind=4)   :: i03(3) = 0.0_16
integer(kind=8)   :: i04(3) = 0.0_16
real(kind=4)      :: i05(3) = 0.0_16
real(kind=8)      :: i06(3) = 0.0_16
real(kind=16)     :: i07(3) = 0.0_16
complex(kind=4)   :: i08(3) = 0.0_16
complex(kind=8)   :: i09(3) = 0.0_16
complex(kind=16)  :: i10(3) = 0.0_16
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test18()
type ty1
integer(kind=1)   :: i01(3) = (0.0_4 ,0.0_4 )
integer(kind=2)   :: i02(3) = (0.0_4 ,0.0_4 )
integer(kind=4)   :: i03(3) = (0.0_4 ,0.0_4 )
integer(kind=8)   :: i04(3) = (0.0_4 ,0.0_4 )
real(kind=4)      :: i05(3) = (0.0_4 ,0.0_4 )
real(kind=8)      :: i06(3) = (0.0_4 ,0.0_4 )
real(kind=16)     :: i07(3) = (0.0_4 ,0.0_4 )
complex(kind=4)   :: i08(3) = (0.0_4 ,0.0_4 )
complex(kind=8)   :: i09(3) = (0.0_4 ,0.0_4 )
complex(kind=16)  :: i10(3) = (0.0_4 ,0.0_4 )
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test19()
type ty1
integer(kind=1)   :: i01(3) = (0.0_8 ,0.0_8 )
integer(kind=2)   :: i02(3) = (0.0_8 ,0.0_8 )
integer(kind=4)   :: i03(3) = (0.0_8 ,0.0_8 )
integer(kind=8)   :: i04(3) = (0.0_8 ,0.0_8 )
real(kind=4)      :: i05(3) = (0.0_8 ,0.0_8 )
real(kind=8)      :: i06(3) = (0.0_8 ,0.0_8 )
real(kind=16)     :: i07(3) = (0.0_8 ,0.0_8 )
complex(kind=4)   :: i08(3) = (0.0_8 ,0.0_8 )
complex(kind=8)   :: i09(3) = (0.0_8 ,0.0_8 )
complex(kind=16)  :: i10(3) = (0.0_8 ,0.0_8 )
end type 
type(ty1) :: str

if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test20()
type ty1
integer(kind=1)   :: i01(3) = (0.0_16,0.0_16)
integer(kind=2)   :: i02(3) = (0.0_16,0.0_16)
integer(kind=4)   :: i03(3) = (0.0_16,0.0_16)
integer(kind=8)   :: i04(3) = (0.0_16,0.0_16)
real(kind=4)      :: i05(3) = (0.0_16,0.0_16)
real(kind=8)      :: i06(3) = (0.0_16,0.0_16)
real(kind=16)     :: i07(3) = (0.0_16,0.0_16)
complex(kind=4)   :: i08(3) = (0.0_16,0.0_16)
complex(kind=8)   :: i09(3) = (0.0_16,0.0_16)
complex(kind=16)  :: i10(3) = (0.0_16,0.0_16)
end type 
type(ty1) :: str
if (.not.all(str%i01.eq.0_1)) call errtra
if (.not.all(str%i02.eq.0_2)) call errtra
if (.not.all(str%i03.eq.0_4)) call errtra
if (.not.all(str%i04.eq.0_8)) call errtra
if (.not.all(str%i05.eq.0.0_4)) call errtra
if (.not.all(str%i06.eq.0.0_8)) call errtra
if (.not.all(str%i07.eq.0.0_16)) call errtra
if (.not.all(str%i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(str%i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(str%i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine errtra()
print *,"err"
end 
