call sss
print *,'pass'
contains
subroutine sss
character(0)::ch1
character(5)::ch2
character(5)::ch3
character(5)::ch4(2)
i=5
call s1(ch1)
call s2(ch2,i)
call s3(ch3,5)
call s4(ch4,i,2)
end subroutine
subroutine s1(a)
character(*)::a
a=""
!$omp task
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a/="") print *,'err1'
!$omp end task
if(a/="") print *,'err2'
!$omp end task
!$omp end task
end subroutine
subroutine s2(a,i)
character(i)::a
a=""
!$omp task
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1:5)/="abcde") print *,'err3'
!$omp end task
if(a(1:5)/="12345") print *,'err4'
!$omp end task
!$omp end task
end subroutine

subroutine s3(a,i)
character(i)::a
a=""
!$omp task
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1:5)/="abcde") print *,'err5'
!$omp end task
if(a/="12345") print *,'err6'
!$omp end task
!$omp end task
end subroutine

subroutine s4(a,i,j)
character(i)::a(j)
a=""
!$omp task
!$omp task default(private)
a="12345"
!$omp task default(firstprivate)
a="abcde"
if(a(1)(1:5)/="abcde") print *,'err7'
!$omp end task
if(a(1)(1:len("abcde"))/="12345") print *,'err8'
!$omp end task
!$omp end task
end subroutine

end
