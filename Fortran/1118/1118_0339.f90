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
integer i,j,k
i=1
j=2
k=5
call s1(ch1,i,j,k)
call s2(ch2,i,j,k)
call s3(ch3,i,j,k)
call s4(ch4,i,j,k)
call s5(ch5,i,j,k)
call s6(ch6,i,j,k)
call s7(ch7,i,j,k)
call s8(ch8,i,j,k)
end subroutine
subroutine s1(a,i,j,k)
character(k)::a(i:j)
integer i,j,k
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1)/="abcde") print *,'err1'
!$omp end task
if(a(1)/="12345") print *,'err2'
!$omp end task
end subroutine
subroutine s2(a,i,j,k)
character(k)::a(i:j,i:j)
integer i,j,k
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1)/="abcde") print *,'err3'
!$omp end task
if(a(1,1)/="12345") print *,'err4'
!$omp end task
end subroutine

subroutine s3(a,i,j,k)
character(k)::a(i:j,i:j,i:j)
integer i,j,k
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1)/="abcde") print *,'err5'
!$omp end task
if(a(1,1,1)/="12345") print *,'err6'
!$omp end task
end subroutine

subroutine s4(a,i,j,k)
character(k)::a(i:j,i:j,i:j,i:j)
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1)/="abcde") print *,'err7'
!$omp end task
if(a(1,1,1,1)/="12345") print *,'err8'
!$omp end task
end subroutine
subroutine s5(a,i,j,k)
character(k)::a(i:j,i:j,i:j,i:j,i:j)
integer i,j,k
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1)/="abcde") print *,'err9'
!$omp end task
if(a(1,1,1,1,1)/="12345") print *,'err10'
!$omp end task
end subroutine
subroutine s6(a,i,j,k)
character(k)::a(i:j,i:j,i:j,i:j,i:j,i:j)
integer i,j,k
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1,1)/="abcde") print *,'err11'
!$omp end task
if(a(1,1,1,1,1,1)/="12345") print *,'err12'
!$omp end task
end subroutine
subroutine s7(a,i,j,k)
character(k)::a(i:j,i:j,i:j,i:j,i:j,i:j,i:j)
integer i,j,k
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1,1,1)/="abcde") print *,'err13'
!$omp end task
if(a(1,1,1,1,1,1,1)/="12345") print *,'err14'
!$omp end task
end subroutine
subroutine s8(a,i,j,k)
character(k)::a(i:j,i:j,i:j,i:j,i:j,i:j,i:j,i:j)
a=""
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1,1,1,1)/="abcde") print *,'err15'
!$omp end task
if(a(1,1,1,1,1,1,1,1)/="12345") print *,'err16'
!$omp end task
end subroutine
end
