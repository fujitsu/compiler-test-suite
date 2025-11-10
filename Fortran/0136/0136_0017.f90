#define EQUAL_CHECK_WITH_MARGIN_R(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-6)
#define EQUAL_CHECK_WITH_MARGIN_D(a, b) (a .ne. b .and. (abs(a - b)/abs(a)) .gt. 1.0D-15)

call s1
print *,'pass'
end
subroutine s1
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(1)::i1,i2,i3,i4,i5
call random_number(harvest=r)
call random_number(harvest=d)
i1=1
i2=2
i3=3
i4=4
i5=5
do j1=1,1000
   do j2=1,1000
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**1_1,r(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**2_1,r(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**3_1,r(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**4_1,r(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**5_1,r(j1,j2)**i5)) print *,'err5'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**1_1,d(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**2_1,d(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**3_1,d(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**4_1,d(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**5_1,d(j1,j2)**i5)) print *,'err5'
   end do
end do
end 

subroutine s2
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(2)::i1,i2,i3,i4,i5
call random_number(harvest=r)
call random_number(harvest=d)
i1=1
i2=2
i3=3
i4=4
i5=5
do j1=1,1000
   do j2=1,1000
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**1_2,r(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**2_2,r(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**3_2,r(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**4_2,r(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**5_2,r(j1,j2)**i5)) print *,'err5'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**1_2,d(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**2_2,d(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**3_2,d(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**4_2,d(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**5_2,d(j1,j2)**i5)) print *,'err5'
   end do
end do
end 

subroutine s3
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(4)::i1,i2,i3,i4,i5
call random_number(harvest=r)
call random_number(harvest=d)
i1=1
i2=2
i3=3
i4=4
i5=5
do j1=1,1000
   do j2=1,1000
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**1_4,r(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**2_4,r(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**3_4,r(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**4_4,r(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**5_4,r(j1,j2)**i5)) print *,'err5'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**1_4,d(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**2_4,d(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**3_4,d(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**4_4,d(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**5_4,d(j1,j2)**i5)) print *,'err5'
   end do
end do
end 

subroutine s4
real(4)::r(1000,1000)
real(8)::d(1000,1000)
integer(8)::i1,i2,i3,i4,i5
call random_number(harvest=r)
call random_number(harvest=d)
i1=1
i2=2
i3=3
i4=4
i5=5
do j1=1,1000
   do j2=1,1000
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**1_8,r(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**2_8,r(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**3_8,r(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**4_8,r(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_R(r(j1,j2)**5_8,r(j1,j2)**i5)) print *,'err5'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**1_8,d(j1,j2)**i1)) print *,'err1'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**2_8,d(j1,j2)**i2)) print *,'err2'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**3_8,d(j1,j2)**i3)) print *,'err3'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**4_8,d(j1,j2)**i4)) print *,'err4'
      if(EQUAL_CHECK_WITH_MARGIN_D(d(j1,j2)**5_8,d(j1,j2)**i5)) print *,'err5'
   end do
end do
end 
