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
if (i01.ne.0_1) print *,'fail'
if (i02.ne.0_2) print *,'fail'
if (i03.ne.0_4) print *,'fail'
if (i04.ne.0_8) print *,'fail'
if (i05.ne.0.0_4) print *,'fail'
if (i06.ne.0.0_8) print *,'fail'
if (i07.ne.0.0_16) print *,'fail'
if (i08.ne.(0.0_4,0.0_4)) print *,'fail'
if (i09.ne.(0.0_8,0.0_8)) print *,'fail'
if (i10.ne.(0.0_16,0.0_16)) print *,'fail'
end subroutine
