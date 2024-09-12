call sss
print *,'pass'
contains
subroutine sss
character(5),pointer::ch1(:)=>null()
character(5),pointer::ch2(:,:)=>null()
character(5),pointer::ch3(:,:,:)=>null()
character(5),pointer::ch4(:,:,:,:)=>null()
character(5),pointer::ch5(:,:,:,:,:)=>null()
character(5),pointer::ch6(:,:,:,:,:,:)=>null()
character(5),pointer::ch7(:,:,:,:,:,:,:)=>null()
character(5),pointer::ch8(:,:,:,:,:,:,:,:)=>null()

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
character(*),pointer::a(:)
allocate(a(i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1)/="abcde") print *,'err1'
!$omp end task
if(a(1)/="abcde") print *,'err2',a(1)
!$omp end task
end subroutine
subroutine s2(a,i)
character(*),pointer::a(:,:)
allocate(a(i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1)/="abcde") print *,'err3'
!$omp end task
if(a(1,1)/="abcde") print *,'err4'
!$omp end task
end subroutine

subroutine s3(a,i)
character(*),pointer::a(:,:,:)
allocate(a(i,i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1)/="abcde") print *,'err5'
!$omp end task
if(a(1,1,1)/="abcde") print *,'err6'
!$omp end task
end subroutine

subroutine s4(a,i)
character(*),pointer::a(:,:,:,:)
allocate(a(i,i,i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1)/="abcde") print *,'err7'
!$omp end task
if(a(1,1,1,1)/="abcde") print *,'err8'
!$omp end task
end subroutine
subroutine s5(a,i)
character(*),pointer::a(:,:,:,:,:)
allocate(a(i,i,i,i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1)/="abcde") print *,'err9'
!$omp end task
if(a(1,1,1,1,1)/="abcde") print *,'err10'
!$omp end task
end subroutine
subroutine s6(a,i)
character(*),pointer::a(:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1,1)/="abcde") print *,'err11'
!$omp end task
if(a(1,1,1,1,1,1)/="abcde") print *,'err12'
!$omp end task
end subroutine
subroutine s7(a,i)
character(*),pointer::a(:,:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1,1,1)/="abcde") print *,'err13'
!$omp end task
if(a(1,1,1,1,1,1,1)/="abcde") print *,'err14'
!$omp end task
end subroutine
subroutine s8(a,i)
character(*),pointer::a(:,:,:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i,i,i))
!$omp task default(private)
!$omp task default(firstprivate)
a="abcde"
if(a(1,1,1,1,1,1,1,1)/="abcde") print *,'err15'
!$omp end task
if(a(1,1,1,1,1,1,1,1)/="abcde") print *,'err16'
!$omp end task
end subroutine
end

