subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
character(1),allocatable:: a*(r)
character(1),allocatable:: b(:)*(r)
allocate(a)
allocate(b(2))
if (len (a)/=3) print *,1001
if (len (b)/=3) print *,1003
if (size(b)/=2) print *,1004
a='12'
if (a/='12') print *,1007
b(r-1)='123'
if (b(2)/='123') print *,1008
end block
end associate
end
call s(3)

print *,'sngg620r : pass'
end

