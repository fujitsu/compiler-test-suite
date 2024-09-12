call test01()
print *,'pass'
end
subroutine test01()
integer,parameter :: ppp = 0
integer(kind=1)   :: i01 = ppp
integer(kind=2)   :: i02 = ppp
integer(kind=4)   :: i03 = ppp
integer(kind=8)   :: i04 = ppp
real(kind=4)      :: i05 = ppp
real(kind=8)      :: i06 = ppp
real(kind=16)     :: i07 = ppp
complex(kind=4)   :: i08 = ppp
complex(kind=8)   :: i09 = ppp
complex(kind=16)  :: i10 = ppp
if (i01.ne.0_1) call errtra
if (i02.ne.0_2) call errtra
if (i03.ne.0_4) call errtra
if (i04.ne.0_8) call errtra
if (i05.ne.0.0_4) call errtra
if (i06.ne.0.0_8) call errtra
if (i07.ne.0.0_16) call errtra
if (i08.ne.(0.0_4,0.0_4)) call errtra
if (i09.ne.(0.0_8,0.0_8)) call errtra
if (i10.ne.(0.0_16,0.0_16)) call errtra
end subroutine
subroutine errtra()
print *,"err"
end
