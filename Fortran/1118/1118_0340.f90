call sss
print *,'pass'
contains
subroutine sss
character(5),allocatable::ch1(:)
character(5),allocatable::ch2(:,:)
character(5),allocatable::ch3(:,:,:)
character(5),allocatable::ch4(:,:,:,:)
character(5),allocatable::ch5(:,:,:,:,:)
character(5),allocatable::ch6(:,:,:,:,:,:)
character(5),allocatable::ch7(:,:,:,:,:,:,:)
character(5),allocatable::ch8(:,:,:,:,:,:,:,:)

call s1(ch1,2)
call s2(ch2,2)
call s3(ch3,2)
call s4(ch4,2)
call s5(ch5,2)
call s6(ch6,2)
call s7(ch7,2)
call s8(ch8,2)
end subroutine
subroutine s1(a,i)
character(*),allocatable::a(:)
allocate(a(i))
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
subroutine s2(a,i)
character(*),allocatable::a(:,:)
allocate(a(i,i))
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

subroutine s3(a,i)
character(*),allocatable::a(:,:,:)
allocate(a(i,i,i))
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

subroutine s4(a,i)
character(*),allocatable::a(:,:,:,:)
allocate(a(i,i,i,i))
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
subroutine s5(a,i)
character(*),allocatable::a(:,:,:,:,:)
allocate(a(i,i,i,i,i))
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
subroutine s6(a,i)
character(*),allocatable::a(:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i))
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
subroutine s7(a,i)
character(*),allocatable::a(:,:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i,i))
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
subroutine s8(a,i)
character(*),allocatable::a(:,:,:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i,i,i))
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
