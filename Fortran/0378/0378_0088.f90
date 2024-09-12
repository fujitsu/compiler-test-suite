subroutine s1
character(*),parameter,dimension(04):: a01=&
 [ character(3):: '1', '23' , '456' ,'789a'] 
character(*),parameter,dimension(04):: a02=&
 [ character(3):: '1234', '567' , '89' , 'a'] 
character(*),parameter,dimension(04):: a03=&
 [ character(3):: '123', '4567' , '89' , 'a'] 
character(*),parameter,dimension(04):: a04=&
 [ character(3):: '123x', '456x' , '789z' , 'abcx'] 
character(*),parameter,dimension(04):: a05=&
 [ character(3):: '123', '456' , '789' , 'abc'] 
character(*),parameter,dimension(04):: a06=&
 [ character(3):: '12', '45' , '78' , 'ab'] 
character(*),parameter,dimension(04):: a07=&
 [ character(3):: '', '' , '' , ''] 
character(*),parameter,dimension(04):: a11=&
 [ character(3)::( '1', '23' , '456' ,'789a' , n=1,1) ] 
character(*),parameter,dimension(04):: a12=&
 [ character(3)::( '1234', '567' , '89' , 'a' , n=1,1) ] 
character(*),parameter,dimension(04):: a13=&
 [ character(3)::( '123', '4567' , '89' , 'a' , n=1,1) ] 
character(*),parameter,dimension(04):: a14=&
 [ character(3)::( '123x', '456x' , '789z' , 'abcx' , n=1,1) ] 
character(*),parameter,dimension(04):: a15=&
 [ character(3)::( '123', '456' , '789' , 'abc' , n=1,1) ] 
character(*),parameter,dimension(04):: a16=&
 [ character(3)::( '12', '45' , '78' , 'ab' , n=1,1) ] 
character(*),parameter,dimension(04):: a17=&
 [ character(3)::( '', '' , '' , '' , n=1,1) ] 
call s01(a01,1)
call s01(a02,2)
call s01(a03,3)
call s01(a04,4)
call s01(a05,5)
call s01(a06,6)
call s01(a07,7)
call s01(a11,1)
call s01(a12,2)
call s01(a13,3)
call s01(a14,4)
call s01(a15,5)
call s01(a16,6)
call s01(a17,7)
call s01( &
 [ character(3):: '1', '23' , '456' ,'789a'] &
,1)
call s01( &
 [ character(3):: '1234', '567' , '89' , 'a'] &
,2)
call s01( &
 [ character(3):: '123', '4567' , '89' , 'a'] &
,3)
call s01( &
 [ character(3):: '123x', '456x' , '789z' , 'abcx'] &
,4)
call s01( &
 [ character(3):: '123', '456' , '789' , 'abc'] &
,5)
call s01( &
 [ character(3):: '12', '45' , '78' , 'ab'] &
,6)
call s01( &
 [ character(3):: '', '' , '' , ''] &
,7)
call s01( &
 [ character(3)::( '1', '23' , '456' ,'789a' , n=1,1) ] &
,1)
call s01( &
 [ character(3)::( '1234', '567' , '89' , 'a' , n=1,1) ] &
,2)
call s01( &
 [ character(3)::( '123', '4567' , '89' , 'a' , n=1,1) ] &
,3)
call s01( &
 [ character(3)::( '123x', '456x' , '789z' , 'abcx' , n=1,1) ] &
,4)
call s01( &
 [ character(3)::( '123', '456' , '789' , 'abc' , n=1,1) ] &
,5)
call s01( &
 [ character(3)::( '12', '45' , '78' , 'ab' , n=1,1) ] &
,6)
call s01( &
 [ character(3)::( '', '' , '' , '' , n=1,1) ] &
,7)
contains
subroutine s01(x,k)
character(*) x(:)
if (len(x)/=3)print *,k,len(x)
if (size(x)/=4)print *,k,size(x)
select case(k)
  case (7)
   if (x(1)/='   ')print *,k,101,x(1)
   if (x(2)/='   ')print *,k,102,x(2)
   if (x(3)/='   ')print *,k,103,x(3)
   if (x(4)/='   ')print *,k,104,x(4)
  case (6)
   if (x(1)/='12 ')print *,k,101,x(1)
   if (x(2)/='45 ')print *,k,102,x(2)
   if (x(3)/='78 ')print *,k,103,x(3)
   if (x(4)/='ab ')print *,k,104,x(4)
  case (5)
   if (x(1)/='123')print *,k,101,x(1)
   if (x(2)/='456')print *,k,102,x(2)
   if (x(3)/='789')print *,k,103,x(3)
   if (x(4)/='abc')print *,k,104,x(4)
  case (4)
   if (x(1)/='123')print *,k,101,x(1)
   if (x(2)/='456')print *,k,102,x(2)
   if (x(3)/='789')print *,k,103,x(3)
   if (x(4)/='abc')print *,k,104,x(4)
  case (3)
   if (x(1)/='123')print *,k,101,x(1)
   if (x(2)/='456')print *,k,102,x(2)
   if (x(3)/='89 ')print *,k,103,x(3)
   if (x(4)/='a  ')print *,k,104,x(4)
  case (2)
   if (x(1)/='123')print *,k,101,x(1)
   if (x(2)/='567')print *,k,102,x(2)
   if (x(3)/='89 ')print *,k,103,x(3)
   if (x(4)/='a  ')print *,k,104,x(4)
  case (1)
   if (x(1)/='1  ')print *,k,101,x(1)
   if (x(2)/='23 ')print *,k,102,x(2)
   if (x(3)/='456')print *,k,103,x(3)
   if (x(4)/='789')print *,k,104,x(4)
end select
end subroutine
end
call s1
print *,'pass'
end
