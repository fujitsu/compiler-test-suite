subroutine s1(m)
integer,parameter:: k=2
character(*),parameter::z='11'
character(*),parameter,dimension(0)::c01=&
  [ character(k):: ( z , j=1,0) ]
n=2;k1=2
call s( [ character(n)::  ( z , j=1,0)] )
call s( [ character(k)::  ( z , j=1,0)] )
call s( [ character(2)::  ( z , j=1,0)] )
call s( [ character(m)::  ( z , j=1,0)] )
call s( [ c01  , ( z , j=1,0)] )
call s( [ character(n):: c01 ,( z , j=1,0) ] )
call s( [ character(k):: c01 ,( z , j=1,0)] )
call s( [ character(2):: c01 ,( z , j=1,0)] )
call s( [ character(m):: c01 ,( z , j=1,0)] )
call s( [ (c01 ,nn=1,k1) ,( z , j=1,0)] )
call s( [ character(n)::( c01,nn=1,k1),( z , j=1,0) ] )
call s( [ character(k)::( c01,nn=1,k1),( z , j=1,0) ] )
call s( [ character(2)::( c01,nn=1,k1),( z , j=1,0) ] )
call s( [ character(m)::( c01,nn=1,k1),( z , j=1,0) ] )
call s( [ character(n):: ( z , j=1,0) ] )
call s( [ character(k):: ( z , j=1,0)] )
call s( [ character(2):: ( z , j=1,0)] )
call s( [ character(m):: ( z , j=1,0)] )
call s( [ character(n):: ( z//z , j=1,0) ] )
call s( [ character(k):: ( z//z , j=1,0)] )
call s( [ character(2):: ( z//z , j=1,0)] )
call s( [ character(m):: ( z//z , j=1,0)] )
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
