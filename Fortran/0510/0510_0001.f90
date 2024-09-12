call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
integer(8),allocatable::a
integer(8),allocatable::b(:)
integer(8)::i(1)
allocate(a)
allocate(b(1))
i=1
a=i(1)
b=i
if(a/=1) print *,'err1'
if(any(b/=1)) print *,'err2'
end subroutine s1
subroutine s2
character(1),allocatable::a
character(1),allocatable::b(:)
character(1)::i(1)
allocate(a)
allocate(b(1))
i="a"
a=i(1)
b=i
if(a/="a") print *,'err1'
if(any(b/="a")) print *,'err2'
end subroutine s2
subroutine s3
complex(16),allocatable::a
complex(16),allocatable::b(:)
complex(16)::i(1)
allocate(a)
allocate(b(1))
i=1
a%re=i(1)%re
a%im=i(1)%im
b%re=i%re
b%im=i%im
if(a/=cmplx(1.0_16)) print *,'err1'
if(any(b/=cmplx(1.0_16))) print *,'err2'
end subroutine s3
end

