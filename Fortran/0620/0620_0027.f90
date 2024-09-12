subroutine s11
character(2),allocatable,dimension(:)::a
integer(4) k
allocate(character(2)::a(2),stat=k)
a='11'
allocate(character(2)::a(2),stat=k)
if (any(a/='11'))print *,404
end
subroutine s12
character(2),allocatable,dimension(:)::a
integer(2) k
allocate(character(2)::a(2),stat=k)
a='11'
allocate(character(2)::a(2),stat=k)
if (any(a/='11'))print *,404
end
subroutine s13
character(2),allocatable,dimension(:)::a
integer(8) k
allocate(character(2)::a(2),stat=k)
a='11'
allocate(character(2)::a(2),stat=k)
if (any(a/='11'))print *,404
end
subroutine s14
character(2),allocatable,dimension(:)::a
integer(1) k
allocate(character(2)::a(2),stat=k)
a='11'
allocate(character(2)::a(2),stat=k)
if (any(a/='11'))print *,404
end

subroutine s21(n)
character(2),allocatable,dimension(:)::a
integer(4) k(n)
allocate(character(2)::a(2),stat=k(n))
a='11'
allocate(character(2)::a(2),stat=k(n))
if (any(a/='11'))print *,404
end
subroutine s22(n)
character(2),allocatable,dimension(:)::a
integer(2) k(n)
allocate(character(2)::a(2),stat=k(n))
a='11'
allocate(character(2)::a(2),stat=k(n))
if (any(a/='11'))print *,404
end
subroutine s23(n)
character(2),allocatable,dimension(:)::a
integer(8) k(n)
allocate(character(2)::a(2),stat=k(n))
a='11'
allocate(character(2)::a(2),stat=k(n))
if (any(a/='11'))print *,404
end
subroutine s24(n)
character(2),allocatable,dimension(:)::a
integer(1) k(n)
allocate(character(2)::a(2),stat=k(n))
a='11'
allocate(character(2)::a(2),stat=k(n))
if (any(a/='11'))print *,404
end

call s11
call s12
call s13
call s14
call s21(2)
call s22(2)
call s23(2)
call s24(2)
print *,'pass'
end
