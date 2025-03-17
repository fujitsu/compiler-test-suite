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
integer(kind=1)   :: i01 / 1_1/
integer(kind=2)   :: i02 / 1_1/
integer(kind=4)   :: i03 / 1_1/
integer(kind=8)   :: i04 / 1_1/
real(kind=4)      :: i05 / 1_1/
real(kind=8)      :: i06 / 1_1/
real(kind=16)     :: i07 / 1_1/
complex(kind=4)   :: i08 / 1_1/
complex(kind=8)   :: i09 / 1_1/
complex(kind=16)  :: i10 / 1_1/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test02()
integer(kind=1)   :: i01 / 1_2/
integer(kind=2)   :: i02 / 1_2/
integer(kind=4)   :: i03 / 1_2/
integer(kind=8)   :: i04 / 1_2/
real(kind=4)      :: i05 / 1_2/
real(kind=8)      :: i06 / 1_2/
real(kind=16)     :: i07 / 1_2/
complex(kind=4)   :: i08 / 1_2/
complex(kind=8)   :: i09 / 1_2/
complex(kind=16)  :: i10 / 1_2/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test03()
integer(kind=1)   :: i01 / 1_4/
integer(kind=2)   :: i02 / 1_4/
integer(kind=4)   :: i03 / 1_4/
integer(kind=8)   :: i04 / 1_4/
real(kind=4)      :: i05 / 1_4/
real(kind=8)      :: i06 / 1_4/
real(kind=16)     :: i07 / 1_4/
complex(kind=4)   :: i08 / 1_4/
complex(kind=8)   :: i09 / 1_4/
complex(kind=16)  :: i10 / 1_4/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test04()
integer(kind=1)   :: i01 / 1_8/
integer(kind=2)   :: i02 / 1_8/
integer(kind=4)   :: i03 / 1_8/
integer(kind=8)   :: i04 / 1_8/
real(kind=4)      :: i05 / 1_8/
real(kind=8)      :: i06 / 1_8/
real(kind=16)     :: i07 / 1_8/
complex(kind=4)   :: i08 / 1_8/
complex(kind=8)   :: i09 / 1_8/
complex(kind=16)  :: i10 / 1_8/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test05()
integer(kind=1)   :: i01 / 1.0_4/
integer(kind=2)   :: i02 / 1.0_4/
integer(kind=4)   :: i03 / 1.0_4/
integer(kind=8)   :: i04 / 1.0_4/
real(kind=4)      :: i05 / 1.0_4/
real(kind=8)      :: i06 / 1.0_4/
real(kind=16)     :: i07 / 1.0_4/
complex(kind=4)   :: i08 / 1.0_4/
complex(kind=8)   :: i09 / 1.0_4/
complex(kind=16)  :: i10 / 1.0_4/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test06()
integer(kind=1)   :: i01 / 1.0_8/
integer(kind=2)   :: i02 / 1.0_8/
integer(kind=4)   :: i03 / 1.0_8/
integer(kind=8)   :: i04 / 1.0_8/
real(kind=4)      :: i05 / 1.0_8/
real(kind=8)      :: i06 / 1.0_8/
real(kind=16)     :: i07 / 1.0_8/
complex(kind=4)   :: i08 / 1.0_8/
complex(kind=8)   :: i09 / 1.0_8/
complex(kind=16)  :: i10 / 1.0_8/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test07()
integer(kind=1)   :: i01 / 1.0_16/
integer(kind=2)   :: i02 / 1.0_16/
integer(kind=4)   :: i03 / 1.0_16/
integer(kind=8)   :: i04 / 1.0_16/
real(kind=4)      :: i05 / 1.0_16/
real(kind=8)      :: i06 / 1.0_16/
real(kind=16)     :: i07 / 1.0_16/
complex(kind=4)   :: i08 / 1.0_16/
complex(kind=8)   :: i09 / 1.0_16/
complex(kind=16)  :: i10 / 1.0_16/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test08()
integer(kind=1)   :: i01 / (1.0_4 ,0.0_4 )/
integer(kind=2)   :: i02 / (1.0_4 ,0.0_4 )/
integer(kind=4)   :: i03 / (1.0_4 ,0.0_4 )/
integer(kind=8)   :: i04 / (1.0_4 ,0.0_4 )/
real(kind=4)      :: i05 / (1.0_4 ,0.0_4 )/
real(kind=8)      :: i06 / (1.0_4 ,0.0_4 )/
real(kind=16)     :: i07 / (1.0_4 ,0.0_4 )/
complex(kind=4)   :: i08 / (1.0_4 ,0.0_4 )/
complex(kind=8)   :: i09 / (1.0_4 ,0.0_4 )/
complex(kind=16)  :: i10 / (1.0_4 ,0.0_4 )/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test09()
integer(kind=1)   :: i01 / (1.0_8 ,0.0_8 )/
integer(kind=2)   :: i02 / (1.0_8 ,0.0_8 )/
integer(kind=4)   :: i03 / (1.0_8 ,0.0_8 )/
integer(kind=8)   :: i04 / (1.0_8 ,0.0_8 )/
real(kind=4)      :: i05 / (1.0_8 ,0.0_8 )/
real(kind=8)      :: i06 / (1.0_8 ,0.0_8 )/
real(kind=16)     :: i07 / (1.0_8 ,0.0_8 )/
complex(kind=4)   :: i08 / (1.0_8 ,0.0_8 )/
complex(kind=8)   :: i09 / (1.0_8 ,0.0_8 )/
complex(kind=16)  :: i10 / (1.0_8 ,0.0_8 )/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test10()
integer(kind=1)   :: i01 / (1.0_16,0.0_16)/
integer(kind=2)   :: i02 / (1.0_16,0.0_16)/
integer(kind=4)   :: i03 / (1.0_16,0.0_16)/
integer(kind=8)   :: i04 / (1.0_16,0.0_16)/
real(kind=4)      :: i05 / (1.0_16,0.0_16)/
real(kind=8)      :: i06 / (1.0_16,0.0_16)/
real(kind=16)     :: i07 / (1.0_16,0.0_16)/
complex(kind=4)   :: i08 / (1.0_16,0.0_16)/
complex(kind=8)   :: i09 / (1.0_16,0.0_16)/
complex(kind=16)  :: i10 / (1.0_16,0.0_16)/
if (i01.ne.1_1) print *,'fail'
if (i02.ne.1_2) print *,'fail'
if (i03.ne.1_4) print *,'fail'
if (i04.ne.1_8) print *,'fail'
if (i05.ne.1.0_4) print *,'fail'
if (i06.ne.1.0_8) print *,'fail'
if (i07.ne.1.0_16) print *,'fail'
if (i08.ne.(1.0_4,0.0_4)) print *,'fail'
if (i09.ne.(1.0_8,0.0_8)) print *,'fail'
if (i10.ne.(1.0_16,0.0_16)) print *,'fail'
end subroutine
subroutine test11()
integer(kind=1)   :: i01(3) /3* 1_1/
integer(kind=2)   :: i02(3) /3* 1_1/
integer(kind=4)   :: i03(3) /3* 1_1/
integer(kind=8)   :: i04(3) /3* 1_1/
real(kind=4)      :: i05(3) /3* 1_1/
real(kind=8)      :: i06(3) /3* 1_1/
real(kind=16)     :: i07(3) /3* 1_1/
complex(kind=4)   :: i08(3) /3* 1_1/
complex(kind=8)   :: i09(3) /3* 1_1/
complex(kind=16)  :: i10(3) /3* 1_1/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test12()
integer(kind=1)   :: i01(3) /3* 1_2/
integer(kind=2)   :: i02(3) /3* 1_2/
integer(kind=4)   :: i03(3) /3* 1_2/
integer(kind=8)   :: i04(3) /3* 1_2/
real(kind=4)      :: i05(3) /3* 1_2/
real(kind=8)      :: i06(3) /3* 1_2/
real(kind=16)     :: i07(3) /3* 1_2/
complex(kind=4)   :: i08(3) /3* 1_2/
complex(kind=8)   :: i09(3) /3* 1_2/
complex(kind=16)  :: i10(3) /3* 1_2/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test13()
integer(kind=1)   :: i01(3) /3* 1_4/
integer(kind=2)   :: i02(3) /3* 1_4/
integer(kind=4)   :: i03(3) /3* 1_4/
integer(kind=8)   :: i04(3) /3* 1_4/
real(kind=4)      :: i05(3) /3* 1_4/
real(kind=8)      :: i06(3) /3* 1_4/
real(kind=16)     :: i07(3) /3* 1_4/
complex(kind=4)   :: i08(3) /3* 1_4/
complex(kind=8)   :: i09(3) /3* 1_4/
complex(kind=16)  :: i10(3) /3* 1_4/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test14()
integer(kind=1)   :: i01(3) /3* 1_8/
integer(kind=2)   :: i02(3) /3* 1_8/
integer(kind=4)   :: i03(3) /3* 1_8/
integer(kind=8)   :: i04(3) /3* 1_8/
real(kind=4)      :: i05(3) /3* 1_8/
real(kind=8)      :: i06(3) /3* 1_8/
real(kind=16)     :: i07(3) /3* 1_8/
complex(kind=4)   :: i08(3) /3* 1_8/
complex(kind=8)   :: i09(3) /3* 1_8/
complex(kind=16)  :: i10(3) /3* 1_8/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test15()
integer(kind=1)   :: i01(3) /3* 1.0_4/
integer(kind=2)   :: i02(3) /3* 1.0_4/
integer(kind=4)   :: i03(3) /3* 1.0_4/
integer(kind=8)   :: i04(3) /3* 1.0_4/
real(kind=4)      :: i05(3) /3* 1.0_4/
real(kind=8)      :: i06(3) /3* 1.0_4/
real(kind=16)     :: i07(3) /3* 1.0_4/
complex(kind=4)   :: i08(3) /3* 1.0_4/
complex(kind=8)   :: i09(3) /3* 1.0_4/
complex(kind=16)  :: i10(3) /3* 1.0_4/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test16()
integer(kind=1)   :: i01(3) /3* 1.0_8/
integer(kind=2)   :: i02(3) /3* 1.0_8/
integer(kind=4)   :: i03(3) /3* 1.0_8/
integer(kind=8)   :: i04(3) /3* 1.0_8/
real(kind=4)      :: i05(3) /3* 1.0_8/
real(kind=8)      :: i06(3) /3* 1.0_8/
real(kind=16)     :: i07(3) /3* 1.0_8/
complex(kind=4)   :: i08(3) /3* 1.0_8/
complex(kind=8)   :: i09(3) /3* 1.0_8/
complex(kind=16)  :: i10(3) /3* 1.0_8/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test17()
integer(kind=1)   :: i01(3) /3* 1.0_16/
integer(kind=2)   :: i02(3) /3* 1.0_16/
integer(kind=4)   :: i03(3) /3* 1.0_16/
integer(kind=8)   :: i04(3) /3* 1.0_16/
real(kind=4)      :: i05(3) /3* 1.0_16/
real(kind=8)      :: i06(3) /3* 1.0_16/
real(kind=16)     :: i07(3) /3* 1.0_16/
complex(kind=4)   :: i08(3) /3* 1.0_16/
complex(kind=8)   :: i09(3) /3* 1.0_16/
complex(kind=16)  :: i10(3) /3* 1.0_16/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test18()
integer(kind=1)   :: i01(3) /3* (1.0_4 ,0.0_4 )/
integer(kind=2)   :: i02(3) /3* (1.0_4 ,0.0_4 )/
integer(kind=4)   :: i03(3) /3* (1.0_4 ,0.0_4 )/
integer(kind=8)   :: i04(3) /3* (1.0_4 ,0.0_4 )/
real(kind=4)      :: i05(3) /3* (1.0_4 ,0.0_4 )/
real(kind=8)      :: i06(3) /3* (1.0_4 ,0.0_4 )/
real(kind=16)     :: i07(3) /3* (1.0_4 ,0.0_4 )/
complex(kind=4)   :: i08(3) /3* (1.0_4 ,0.0_4 )/
complex(kind=8)   :: i09(3) /3* (1.0_4 ,0.0_4 )/
complex(kind=16)  :: i10(3) /3* (1.0_4 ,0.0_4 )/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test19()
integer(kind=1)   :: i01(3) /3* (1.0_8 ,0.0_8 )/
integer(kind=2)   :: i02(3) /3* (1.0_8 ,0.0_8 )/
integer(kind=4)   :: i03(3) /3* (1.0_8 ,0.0_8 )/
integer(kind=8)   :: i04(3) /3* (1.0_8 ,0.0_8 )/
real(kind=4)      :: i05(3) /3* (1.0_8 ,0.0_8 )/
real(kind=8)      :: i06(3) /3* (1.0_8 ,0.0_8 )/
real(kind=16)     :: i07(3) /3* (1.0_8 ,0.0_8 )/
complex(kind=4)   :: i08(3) /3* (1.0_8 ,0.0_8 )/
complex(kind=8)   :: i09(3) /3* (1.0_8 ,0.0_8 )/
complex(kind=16)  :: i10(3) /3* (1.0_8 ,0.0_8 )/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
subroutine test20()
integer(kind=1)   :: i01(3) /3* (1.0_16,0.0_16)/
integer(kind=2)   :: i02(3) /3* (1.0_16,0.0_16)/
integer(kind=4)   :: i03(3) /3* (1.0_16,0.0_16)/
integer(kind=8)   :: i04(3) /3* (1.0_16,0.0_16)/
real(kind=4)      :: i05(3) /3* (1.0_16,0.0_16)/
real(kind=8)      :: i06(3) /3* (1.0_16,0.0_16)/
real(kind=16)     :: i07(3) /3* (1.0_16,0.0_16)/
complex(kind=4)   :: i08(3) /3* (1.0_16,0.0_16)/
complex(kind=8)   :: i09(3) /3* (1.0_16,0.0_16)/
complex(kind=16)  :: i10(3) /3* (1.0_16,0.0_16)/
if (.not.all(i01.eq.1_1)) print *,'fail'
if (.not.all(i02.eq.1_2)) print *,'fail'
if (.not.all(i03.eq.1_4)) print *,'fail'
if (.not.all(i04.eq.1_8)) print *,'fail'
if (.not.all(i05.eq.1.0_4)) print *,'fail'
if (.not.all(i06.eq.1.0_8)) print *,'fail'
if (.not.all(i07.eq.1.0_16)) print *,'fail'
if (.not.all(i08.eq.(1.0_4,0.0_4))) print *,'fail'
if (.not.all(i09.eq.(1.0_8,0.0_8))) print *,'fail'
if (.not.all(i10.eq.(1.0_16,0.0_16))) print *,'fail'
end subroutine
