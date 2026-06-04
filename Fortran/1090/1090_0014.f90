subroutine s4
implicit none
integer::n=3
associate(r=>n)
block
dimension ::a(r),b(r),c(r),d(r)
character(2):: a*(r),b*(r),c,d
if (len (a)/=3) print *,2001
if (len (b)/=3) print *,2002
if (len (c)/=2) print *,2003
if (len (d)/=2) print *,2004
if (size (a)/=3) print *,2011
if (size (b)/=3) print *,2012
if (size (c)/=3) print *,2013
if (size (d)/=3) print *,2014
end block
end associate
end 
subroutine s2
implicit none
integer::n=3
associate(r=>n)
block
dimension ::a(r),b(r),c(r),d(r)
character(r):: a*(2),b*(2),c,d
if (len (a)/=2) print *,2001
if (len (b)/=2) print *,2002
if (len (c)/=3) print *,2003
if (len (d)/=3) print *,2004
if (size (a)/=3) print *,2011
if (size (b)/=3) print *,2012
if (size (c)/=3) print *,2013
if (size (d)/=3) print *,2014
end block
end associate
end 
subroutine s3
implicit none
integer::n=3
associate(r=>n)
block
dimension ::a(2),b(2),c(2),d(2)
character(2):: a*(r),b*(r),c,d
if (len (a)/=3) print *,3001
if (len (b)/=3) print *,3002
if (len (c)/=2) print *,3003
if (len (d)/=2) print *,3004
if (size (a)/=2) print *,3011
if (size (b)/=2) print *,3012
if (size (c)/=2) print *,3013
if (size (d)/=2) print *,3014
end block
end associate
end 
subroutine s1
implicit none
integer::n=3
associate(r=>n)
block
dimension ::a(2),b(2),c(2),d(2)
character(r):: a*(2),b*(2),c,d
if (len (a)/=2) print *,1001
if (len (b)/=2) print *,1002
if (len (c)/=3) print *,1003
if (len (d)/=3) print *,1004
if (size (a)/=2) print *,1011
if (size (b)/=2) print *,1012
if (size (c)/=2) print *,1013
if (size (d)/=2) print *,1014
end block
end associate
end 
call s1
call s2
call s3
call s4

print *,'sngg614r : pass'
end

