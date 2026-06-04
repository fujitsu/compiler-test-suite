call sss
print *,'pass'
contains
subroutine sss
integer(2),allocatable::i1(:)
integer(2),allocatable::i2(:,:)
integer(2),allocatable::i3(:,:,:)
integer(2),allocatable::i4(:,:,:,:)
integer(2),allocatable::i5(:,:,:,:,:)
integer(2),allocatable::i6(:,:,:,:,:,:)
integer(2),allocatable::i7(:,:,:,:,:,:,:)

call s1(i1,2)
call s2(i2,2)
call s3(i3,2)
call s4(i4,2)
call s5(i5,2)
call s6(i6,2)
call s7(i7,2)
end subroutine
subroutine s1(a,i)
integer(2),allocatable::a(:)
allocate(a(i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1)/=2) print *,'err1'
!$omp end task
if(a(1)/=1) print *,'err2'
!$omp end task
end subroutine
subroutine s2(a,i)
integer(2),allocatable::a(:,:)
allocate(a(i,i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1,1)/=2) print *,'err3'
!$omp end task
if(a(1,1)/=1) print *,'err4'
!$omp end task
end subroutine

subroutine s3(a,i)
integer(2),allocatable::a(:,:,:)
allocate(a(i,i,i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1,1,1)/=2) print *,'err5'
!$omp end task
if(a(1,1,1)/=1) print *,'err6'
!$omp end task
end subroutine

subroutine s4(a,i)
integer(2),allocatable::a(:,:,:,:)
allocate(a(i,i,i,i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1,1,1,1)/=2) print *,'err7'
!$omp end task
if(a(1,1,1,1)/=1) print *,'err8'
!$omp end task
end subroutine
subroutine s5(a,i)
integer(2),allocatable::a(:,:,:,:,:)
allocate(a(i,i,i,i,i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1,1,1,1,1)/=2) print *,'err9'
!$omp end task
if(a(1,1,1,1,1)/=1) print *,'err10'
!$omp end task
end subroutine
subroutine s6(a,i)
integer(2),allocatable::a(:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1,1,1,1,1,1)/=2) print *,'err11'
!$omp end task
if(a(1,1,1,1,1,1)/=1) print *,'err12'
!$omp end task
end subroutine
subroutine s7(a,i)
integer(2),allocatable::a(:,:,:,:,:,:,:)
allocate(a(i,i,i,i,i,i,i))
a=0
!$omp task default(private)
a=1
!$omp task default(firstprivate)
a=2
if(a(1,1,1,1,1,1,1)/=2) print *,'err13'
!$omp end task
if(a(1,1,1,1,1,1,1)/=1) print *,'err14'
!$omp end task
end subroutine
end
