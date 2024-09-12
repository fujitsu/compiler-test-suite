integer(1),allocatable,dimension(:)::i1
integer(2),allocatable,dimension(:,:)::i2
integer(4),allocatable,dimension(:,:,:)::i4
integer(8),allocatable,dimension(:,:,:,:)::i8
allocate(i1(0))
allocate(i2(0,0))
allocate(i4(0,0,0))
allocate(i8(0,0,0,0))
call s1(i1)
call s2(i2)
call s3(i4)
call s4(i8)
deallocate(i1,i2,i4,i8)
call s11(i1)
call s12(i2)
call s13(i4)
call s14(i8)
print *,'pass'
contains
subroutine s1(a)
integer(1),allocatable,dimension(:)::a
if(sizeof(a)/=0) print *,'err-1'
end subroutine
subroutine s2(a)
integer(2),allocatable,dimension(:,:)::a
if(sizeof(a)/=0) print *,'err-2'
end subroutine
subroutine s3(a)
integer(4),allocatable,dimension(:,:,:)::a
if(sizeof(a)/=0) print *,'err-3'
end subroutine
subroutine s4(a)
integer(8),allocatable,dimension(:,:,:,:)::a
if(sizeof(a)/=0) print *,'err-4'
end subroutine
subroutine s11(a)
integer(1),allocatable,dimension(:)::a
allocate(a(10))
if(sizeof(a)/=10) print *,'err-5'
end subroutine
subroutine s12(a)
integer(2),allocatable,dimension(:,:)::a
allocate(a(1,10))
if(sizeof(a)/=20) print *,'err-6'
end subroutine
subroutine s13(a)
integer(4),allocatable,dimension(:,:,:)::a
allocate(a(1,1,10))
if(sizeof(a)/=40) print *,'err-7'
end subroutine
subroutine s14(a)
integer(8),allocatable,dimension(:,:,:,:)::a
allocate(a(1,1,1,10))
if(sizeof(a)/=80) print *,'err-8'
end subroutine
end
