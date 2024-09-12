call test11()
call test12()
call test13()
call test14()
call test15()
call test16()
call test17()
call test18()
call test19()
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
print *,'pass'
end
subroutine test11()
integer(kind=1)   :: i01(3) = (/(0_1,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0_1,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0_1,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0_1,i=1,3)/)
real(kind=4)      :: i05(3) = (/(0_1,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0_1,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0_1,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0_1,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0_1,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0_1,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/(0_2,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0_2,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0_2,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0_2,i=1,3)/)
real(kind=4)      :: i05(3) = (/(0_2,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0_2,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0_2,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0_2,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0_2,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0_2,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/(0_4,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0_4,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0_4,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0_4,i=1,3)/)
real(kind=4)      :: i05(3) = (/(0_4,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0_4,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0_4,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0_4,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0_4,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0_4,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/(0_8,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0_8,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0_8,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0_8,i=1,3)/)
real(kind=4)      :: i05(3) =(/( 0_8,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0_8,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0_8,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0_8,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0_8,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0_8,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/(0.0_4,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0.0_4,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0.0_4,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0.0_4,i=1,3)/)
real(kind=4)      :: i05(3) = (/(0.0_4,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0.0_4,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0.0_4,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0.0_4,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0.0_4,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0.0_4,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/(0.0_8,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0.0_8,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0.0_8,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0.0_8,i=1,3)/)
real(kind=4)      :: i05(3) = (/(0.0_8,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0.0_8,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0.0_8,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0.0_8,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0.0_8,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0.0_8,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/(0.0_16,i=1,3)/)
integer(kind=2)   :: i02(3) = (/(0.0_16,i=1,3)/)
integer(kind=4)   :: i03(3) = (/(0.0_16,i=1,3)/)
integer(kind=8)   :: i04(3) = (/(0.0_16,i=1,3)/)
real(kind=4)      :: i05(3) = (/(0.0_16,i=1,3)/)
real(kind=8)      :: i06(3) = (/(0.0_16,i=1,3)/)
real(kind=16)     :: i07(3) = (/(0.0_16,i=1,3)/)
complex(kind=4)   :: i08(3) = (/(0.0_16,i=1,3)/)
complex(kind=8)   :: i09(3) = (/(0.0_16,i=1,3)/)
complex(kind=16)  :: i10(3) = (/(0.0_16,i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
integer(kind=2)   :: i02(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
integer(kind=4)   :: i03(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
integer(kind=8)   :: i04(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
real(kind=4)      :: i05(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
real(kind=8)      :: i06(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
real(kind=16)     :: i07(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
complex(kind=4)   :: i08(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
complex(kind=8)   :: i09(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
complex(kind=16)  :: i10(3) = (/((0.0_4 ,0.0_4 ),i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
integer(kind=2)   :: i02(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
integer(kind=4)   :: i03(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
integer(kind=8)   :: i04(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
real(kind=4)      :: i05(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
real(kind=8)      :: i06(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
real(kind=16)     :: i07(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
complex(kind=4)   :: i08(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
complex(kind=8)   :: i09(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
complex(kind=16)  :: i10(3) = (/((0.0_8 ,0.0_8 ),i=1,3)/)
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
integer(kind=1)   :: i01(3) = (/((0.0_16,0.0_16),i=1,3)/)
integer(kind=2)   :: i02(3) = (/((0.0_16,0.0_16),i=1,3)/)
integer(kind=4)   :: i03(3) = (/((0.0_16,0.0_16),i=1,3)/)
integer(kind=8)   :: i04(3) = (/((0.0_16,0.0_16),i=1,3)/)
real(kind=4)      :: i05(3) = (/((0.0_16,0.0_16),i=1,3)/)
real(kind=8)      :: i06(3) = (/((0.0_16,0.0_16),i=1,3)/)
real(kind=16)     :: i07(3) = (/((0.0_16,0.0_16),i=1,3)/)
complex(kind=4)   :: i08(3) = (/((0.0_16,0.0_16),i=1,3)/)
complex(kind=8)   :: i09(3) = (/((0.0_16,0.0_16),i=1,3)/)
complex(kind=16)  :: i10(3) = (/((0.0_16,0.0_16),i=1,3)/)
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
