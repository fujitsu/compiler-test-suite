subroutine s1(m)
integer,parameter:: k=2
character(*),parameter,dimension(0)::c01=&
  [ character(k):: ]
n=2;k1=2
call s( [ character(n)::  ] )
call s( [ character(k)::  ] )
call s( [ character(2)::  ] )
call s( [ character(m)::  ] )
call s( [ c01  ] )
call s( [ character(n):: c01 ] )
call s( [ character(k):: c01 ] )
call s( [ character(2):: c01 ] )
call s( [ character(m):: c01 ] )
call s( [ (c01 ,nn=1,k1) ] )
call s( [ character(n)::( c01,nn=1,k1) ] )
call s( [ character(k)::( c01,nn=1,k1) ] )
call s( [ character(2)::( c01,nn=1,k1) ] )
call s( [ character(m)::( c01,nn=1,k1) ] )
contains
subroutine s(x)
character(*),dimension(:)::x
if (size(x)/=0)print *,101,size(x)
if (len (x)/=2)print *,101,len (x)
end subroutine
end
call s1(2)
print *,'pass'
end
