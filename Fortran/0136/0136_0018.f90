#define EQUAL_CHECK_WITH_MARGIN_R(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-6)
#define EQUAL_CHECK_WITH_MARGIN_D(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-15)

call s1
call s2
call s3
call s4
print *,'pass'
contains
subroutine s1
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(1)::i1,i2,i3,i4,i5
i1=1
i2=2
i3=3
i4=4
i5=5
call random_number(harvest=r)
call random_number(harvest=d)
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**1_1,r**i1))) print *,'err1'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**2_1,r**i2))) print *,'err2'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**3_1,r**i3))) print *,'err3'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**4_1,r**i4))) print *,'err4'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**5_1,r**i5))) print *,'err5'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**1_1,d**i1))) print *,'err6'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**2_1,d**i2))) print *,'err7'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**3_1,d**i3))) print *,'err8'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**4_1,d**i4))) print *,'err9'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**5_1,d**i5))) print *,'err10'
end subroutine

subroutine s2
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(2)::i1,i2,i3,i4,i5
i1=1
i2=2
i3=3
i4=4
i5=5
call random_number(harvest=r)
call random_number(harvest=d)
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**1_2,r**i1))) print *,'err1'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**2_2,r**i2))) print *,'err2'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**3_2,r**i3))) print *,'err3'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**4_2,r**i4))) print *,'err4'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**5_2,r**i5))) print *,'err5'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**1_2,d**i1))) print *,'err6'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**2_2,d**i2))) print *,'err7'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**3_2,d**i3))) print *,'err8'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**4_2,d**i4))) print *,'err9'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**5_2,d**i5))) print *,'err10'
end subroutine

subroutine s3
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(4)::i1,i2,i3,i4,i5
i1=1
i2=2
i3=3
i4=4
i5=5
call random_number(harvest=r)
call random_number(harvest=d)
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**1_4,r**i1))) print *,'err1'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**2_4,r**i2))) print *,'err2'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**3_4,r**i3))) print *,'err3'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**4_4,r**i4))) print *,'err4'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**5_4,r**i5))) print *,'err5'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**1_4,d**i1))) print *,'err6'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**2_4,d**i2))) print *,'err7'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**3_4,d**i3))) print *,'err8'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**4_4,d**i4))) print *,'err9'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**5_4,d**i5))) print *,'err10'
end subroutine

subroutine s4
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(8)::i1,i2,i3,i4,i5
i1=1
i2=2
i3=3
i4=4
i5=5
call random_number(harvest=r)
call random_number(harvest=d)
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**1_8,r**i1))) print *,'err1'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**2_8,r**i2))) print *,'err2'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**3_8,r**i3))) print *,'err3'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**4_8,r**i4))) print *,'err4'
if(any(EQUAL_CHECK_WITH_MARGIN_R(r**5_8,r**i5))) print *,'err5'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**1_8,d**i1))) print *,'err6'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**2_8,d**i2))) print *,'err7'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**3_8,d**i3))) print *,'err8'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**4_8,d**i4))) print *,'err9'
if(any(EQUAL_CHECK_WITH_MARGIN_D(d**5_8,d**i5))) print *,'err10'
end subroutine
end
