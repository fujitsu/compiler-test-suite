call test21()
call test22()
call test23()
call test24()
call test25()
call test26()
call test27()
call test28()
call test29()
call test30()
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
subroutine test11()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0_1/
data i02(1:3) /3* 0_1/
data i03(1:3) /3* 0_1/
data i04(1:3) /3* 0_1/
data i05(1:3) /3* 0_1/
data i06(1:3) /3* 0_1/
data i07(1:3) /3* 0_1/
data i08(1:3) /3* 0_1/
data i09(1:3) /3* 0_1/
data i10(1:3) /3* 0_1/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test12()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0_2/
data i02(1:3) /3* 0_2/
data i03(1:3) /3* 0_2/
data i04(1:3) /3* 0_2/
data i05(1:3) /3* 0_2/
data i06(1:3) /3* 0_2/
data i07(1:3) /3* 0_2/
data i08(1:3) /3* 0_2/
data i09(1:3) /3* 0_2/
data i10(1:3) /3* 0_2/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test13()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0_4/
data i02(1:3) /3* 0_4/
data i03(1:3) /3* 0_4/
data i04(1:3) /3* 0_4/
data i05(1:3) /3* 0_4/
data i06(1:3) /3* 0_4/
data i07(1:3) /3* 0_4/
data i08(1:3) /3* 0_4/
data i09(1:3) /3* 0_4/
data i10(1:3) /3* 0_4/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test14()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0_8/
data i02(1:3) /3* 0_8/
data i03(1:3) /3* 0_8/
data i04(1:3) /3* 0_8/
data i05(1:3) /3* 0_8/
data i06(1:3) /3* 0_8/
data i07(1:3) /3* 0_8/
data i08(1:3) /3* 0_8/
data i09(1:3) /3* 0_8/
data i10(1:3) /3* 0_8/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test15()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0.0_4/
data i02(1:3) /3* 0.0_4/
data i03(1:3) /3* 0.0_4/
data i04(1:3) /3* 0.0_4/
data i05(1:3) /3* 0.0_4/
data i06(1:3) /3* 0.0_4/
data i07(1:3) /3* 0.0_4/
data i08(1:3) /3* 0.0_4/
data i09(1:3) /3* 0.0_4/
data i10(1:3) /3* 0.0_4/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test16()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0.0_8/
data i02(1:3) /3* 0.0_8/
data i03(1:3) /3* 0.0_8/
data i04(1:3) /3* 0.0_8/
data i05(1:3) /3* 0.0_8/
data i06(1:3) /3* 0.0_8/
data i07(1:3) /3* 0.0_8/
data i08(1:3) /3* 0.0_8/
data i09(1:3) /3* 0.0_8/
data i10(1:3) /3* 0.0_8/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test17()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* 0.0_16/
data i02(1:3) /3* 0.0_16/
data i03(1:3) /3* 0.0_16/
data i04(1:3) /3* 0.0_16/
data i05(1:3) /3* 0.0_16/
data i06(1:3) /3* 0.0_16/
data i07(1:3) /3* 0.0_16/
data i08(1:3) /3* 0.0_16/
data i09(1:3) /3* 0.0_16/
data i10(1:3) /3* 0.0_16/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine

subroutine test18()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* (0.0_4 ,0.0_4 )/
data i02(1:3) /3* (0.0_4 ,0.0_4 )/
data i03(1:3) /3* (0.0_4 ,0.0_4 )/
data i04(1:3) /3* (0.0_4 ,0.0_4 )/
data i05(1:3) /3* (0.0_4 ,0.0_4 )/
data i06(1:3) /3* (0.0_4 ,0.0_4 )/
data i07(1:3) /3* (0.0_4 ,0.0_4 )/
data i08(1:3) /3* (0.0_4 ,0.0_4 )/
data i09(1:3) /3* (0.0_4 ,0.0_4 )/
data i10(1:3) /3* (0.0_4 ,0.0_4 )/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test19()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* (0.0_8 ,0.0_8 )/
data i02(1:3) /3* (0.0_8 ,0.0_8 )/
data i03(1:3) /3* (0.0_8 ,0.0_8 )/
data i04(1:3) /3* (0.0_8 ,0.0_8 )/
data i05(1:3) /3* (0.0_8 ,0.0_8 )/
data i06(1:3) /3* (0.0_8 ,0.0_8 )/
data i07(1:3) /3* (0.0_8 ,0.0_8 )/
data i08(1:3) /3* (0.0_8 ,0.0_8 )/
data i09(1:3) /3* (0.0_8 ,0.0_8 )/
data i10(1:3) /3* (0.0_8 ,0.0_8 )/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test20()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1:3) /3* (0.0_16,0.0_16)/
data i02(1:3) /3* (0.0_16,0.0_16)/
data i03(1:3) /3* (0.0_16,0.0_16)/
data i04(1:3) /3* (0.0_16,0.0_16)/
data i05(1:3) /3* (0.0_16,0.0_16)/
data i06(1:3) /3* (0.0_16,0.0_16)/
data i07(1:3) /3* (0.0_16,0.0_16)/
data i08(1:3) /3* (0.0_16,0.0_16)/
data i09(1:3) /3* (0.0_16,0.0_16)/
data i10(1:3) /3* (0.0_16,0.0_16)/
i01(2)=0
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine

subroutine test21()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data (i01(i),i=1,3) /3* 0_1/
data (i02(i),i=1,3) /3* 0_1/
data (i03(i),i=1,3) /3* 0_1/
data (i04(i),i=1,3) /3* 0_1/
data (i05(i),i=1,3) /3* 0_1/
data (i06(i),i=1,3) /3* 0_1/
data (i07(i),i=1,3) /3* 0_1/
data (i08(i),i=1,3) /3* 0_1/
data (i09(i),i=1,3) /3* 0_1/
data (i10(i),i=1,3) /3* 0_1/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test22()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data (i01(i),i=1,3) /3* 0_2/
data (i02(i),i=1,3) /3* 0_2/
data (i03(i),i=1,3) /3* 0_2/
data (i04(i),i=1,3) /3* 0_2/
data (i05(i),i=1,3) /3* 0_2/
data (i06(i),i=1,3) /3* 0_2/
data (i07(i),i=1,3) /3* 0_2/
data (i08(i),i=1,3) /3* 0_2/
data (i09(i),i=1,3) /3* 0_2/
data (i10(i),i=1,3) /3* 0_2/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test23()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01(1),i01(2),i01(3) /3* 0_4/
data i02(1),i02(2),i02(3) /3* 0_4/
data i03(1),i03(2),i03(3) /3* 0_4/
data i04(1),i04(2),i04(3) /3* 0_4/
data i05(1),i05(2),i05(3) /3* 0_4/
data i06(1),i06(2),i06(3) /3* 0_4/
data i07(1),i07(2),i07(3) /3* 0_4/
data i08(1),i08(2),i08(3) /3* 0_4/
data i09(1),i09(2),i09(3) /3* 0_4/
data i10(1),i10(2),i10(3) /3* 0_4/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test24()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data (i01(1),i01(2),i01(3),i=1,1) /3* 0_4/
data (i02(1),i02(2),i02(3),i=1,1) /3* 0_4/
data (i03(1),i03(2),i03(3),i=1,1) /3* 0_4/
data (i04(1),i04(2),i04(3),i=1,1) /3* 0_4/
data (i05(1),i05(2),i05(3),i=1,1) /3* 0_4/
data (i06(1),i06(2),i06(3),i=1,1) /3* 0_4/
data (i07(1),i07(2),i07(3),i=1,1) /3* 0_4/
data (i08(1),i08(2),i08(3),i=1,1) /3* 0_4/
data (i09(1),i09(2),i09(3),i=1,1) /3* 0_4/
data (i10(1),i10(2),i10(3),i=1,1) /3* 0_4/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test25()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data ((i01(1),i=1,1),i01(2),i01(3),j=1,1) /3* 0.0_4/
data ((i02(1),i=1,1),i02(2),i02(3),j=1,1) /3* 0.0_4/
data ((i03(1),i=1,1),i03(2),i03(3),j=1,1) /3* 0.0_4/
data ((i04(1),i=1,1),i04(2),i04(3),j=1,1) /3* 0.0_4/
data ((i05(1),i=1,1),i05(2),i05(3),j=1,1) /3* 0.0_4/
data ((i06(1),i=1,1),i06(2),i06(3),j=1,1) /3* 0.0_4/
data ((i07(1),i=1,1),i07(2),i07(3),j=1,1) /3* 0.0_4/
data ((i08(1),i=1,1),i08(2),i08(3),j=1,1) /3* 0.0_4/
data ((i09(1),i=1,1),i09(2),i09(3),j=1,1) /3* 0.0_4/
data ((i10(1),i=1,1),i10(2),i10(3),j=1,1) /3* 0.0_4/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test26()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01,i02 /6* 0.0_8/
data i03 /3* 0.0_8/
data i04 /3* 0.0_8/
data i05 /3* 0.0_8/
data i06 /3* 0.0_8/
data i07 /3* 0.0_8/
data i08 /3* 0.0_8/
data i09 /3* 0.0_8/
data i10 /3* 0.0_8/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test27()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01,(i02(i),i=1,3) /6* 0.0_16/
data i03 /3* 0.0_16/
data i04 /3* 0.0_16/
data i05 /3* 0.0_16/
data i06 /3* 0.0_16/
data i07 /3* 0.0_16/
data i08 /3* 0.0_16/
data i09 /3* 0.0_16/
data i10 /3* 0.0_16/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine

subroutine test28()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01,(i02(i),i=1,3),i03(1),i03(2),i03(3) /9* (0.0_4 ,0.0_4 )/
data i04 /3* (0.0_4 ,0.0_4 )/
data i05 /3* (0.0_4 ,0.0_4 )/
data i06 /3* (0.0_4 ,0.0_4 )/
data i07 /3* (0.0_4 ,0.0_4 )/
data i08 /3* (0.0_4 ,0.0_4 )/
data i09 /3* (0.0_4 ,0.0_4 )/
data i10 /3* (0.0_4 ,0.0_4 )/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test29()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01,i02(1:3) /6* (0.0_8 ,0.0_8 )/
data i03 /3* (0.0_8 ,0.0_8 )/
data i04 /3* (0.0_8 ,0.0_8 )/
data i05 /3* (0.0_8 ,0.0_8 )/
data i06 /3* (0.0_8 ,0.0_8 )/
data i07 /3* (0.0_8 ,0.0_8 )/
data i08 /3* (0.0_8 ,0.0_8 )/
data i09 /3* (0.0_8 ,0.0_8 )/
data i10 /3* (0.0_8 ,0.0_8 )/
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine
subroutine test30()
integer(kind=1)   :: i01(3)
integer(kind=2)   :: i02(3)
integer(kind=4)   :: i03(3)
integer(kind=8)   :: i04(3)
real(kind=4)      :: i05(3)
real(kind=8)      :: i06(3)
real(kind=16)     :: i07(3)
complex(kind=4)   :: i08(3)
complex(kind=8)   :: i09(3)
complex(kind=16)  :: i10(3)
data i01 /3* (0.0_16,0.0_16)/
data i02 /3* (0.0_16,0.0_16)/
data i03 /3* (0.0_16,0.0_16)/
data i04 /3* (0.0_16,0.0_16)/
data i05 /3* (0.0_16,0.0_16)/
data i06 /3* (0.0_16,0.0_16)/
data i07 /3* (0.0_16,0.0_16)/
data i08 /3* (0.0_16,0.0_16)/
data i09 /3* (0.0_16,0.0_16)/
data i10 /3* (0.0_16,0.0_16)/
i01(2)=0
if (.not.all(i01.eq.0_1)) call errtra
if (.not.all(i02.eq.0_2)) call errtra
if (.not.all(i03.eq.0_4)) call errtra
if (.not.all(i04.eq.0_8)) call errtra
if (.not.all(i05.eq.0.0_4)) call errtra
if (.not.all(i06.eq.0.0_8)) call errtra
if (.not.all(i07.eq.0.0_16)) call errtra
if (.not.all(i08.eq.(0.0_4,0.0_4))) call errtra
if (.not.all(i09.eq.(0.0_8,0.0_8))) call errtra
if (.not.all(i10.eq.(0.0_16,0.0_16))) call errtra
end subroutine

subroutine errtra()
print *,"err"
end
