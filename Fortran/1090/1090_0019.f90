subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
character(r),pointer:: a
character(r),pointer:: b(:)
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
print *,'sngg619r : pass'
end

