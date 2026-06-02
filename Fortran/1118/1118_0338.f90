call sss
print *,'pass'
contains
subroutine sss
character(5)::ch1(2)
character(5)::ch2(2,2)
character(5)::ch3(2,2,2)
character(5)::ch4(2,2,2,2)
character(5)::ch5(2,2,2,2,2)
character(5)::ch6(2,2,2,2,2,2)
character(5)::ch7(2,2,2,2,2,2,2)
character(5)::ch8(2,2,2,2,2,2,2,2)

call s1(ch1)
call s2(ch2)
call s3(ch3)
call s4(ch4)
call s5(ch5)
call s6(ch6)
call s7(ch7)
call s8(ch8)
end subroutine
subroutine s1(a)
character(*)::a(:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1)/="abcde") print *,'err1'
!$omp end task
if(a(1)/="12345") print *,'err2'
!$omp end task
end subroutine
subroutine s2(a)
character(*)::a(:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1)/="abcde") print *,'err3'
!$omp end task
if(a(1,1)/="12345") print *,'err4'
!$omp end task
end subroutine

subroutine s3(a)
character(*)::a(:,:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1,1)/="abcde") print *,'err5'
!$omp end task
if(a(1,1,1)/="12345") print *,'err6'
!$omp end task
end subroutine

subroutine s4(a)
character(*)::a(:,:,:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1,1,1)/="abcde") print *,'err7'
!$omp end task
if(a(1,1,1,1)/="12345") print *,'err8'
!$omp end task
end subroutine
subroutine s5(a)
character(*)::a(:,:,:,:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1,1,1,1)/="abcde") print *,'err9'
!$omp end task
if(a(1,1,1,1,1)/="12345") print *,'err10'
!$omp end task
end subroutine
subroutine s6(a)
character(*)::a(:,:,:,:,:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1,1,1,1,1)/="abcde") print *,'err11'
!$omp end task
if(a(1,1,1,1,1,1)/="12345") print *,'err12'
!$omp end task
end subroutine
subroutine s7(a)
character(*)::a(:,:,:,:,:,:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1,1,1,1,1,1)/="abcde") print *,'err13'
!$omp end task
if(a(1,1,1,1,1,1,1)/="12345") print *,'err14'
!$omp end task
end subroutine
subroutine s8(a)
character(*)::a(:,:,:,:,:,:,:,:)
a=""
!$omp task
a="12345"
!$omp task
a="abcde"
if(a(1,1,1,1,1,1,1,1)/="abcde") print *,'err15'
!$omp end task
if(a(1,1,1,1,1,1,1,1)/="12345") print *,'err16'
!$omp end task
end subroutine
end
