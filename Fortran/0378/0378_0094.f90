subroutine s1
parameter (m1=1,m2=2)
character(*),parameter,dimension(04):: a11=&
 [ character(m1+m2)::( '1', '23' , '456' ,'789a' , n=1,1) ] 
character(*),parameter,dimension(09):: a12=&
 [ character(m1+m2)::( '1', '2345' ,&
                 ( '4' ,'789a' , &
                 ( '2','3456' ,  n=1,1) , '1234' , nn=1,1) , &
                    '3456' , nnn=1,1) , '5678' ] 
character(*),parameter,dimension(04):: c11=&
 [               ( '1', '23' , '456' ,'789' , n=1,1) ] 
call s01(a11,1)
call s02(a12,2)
call s01(&
 [ character(m1+m2)::( '1', '23' , '456' ,'789a' , n=1,1) ] &
,1)
call s02(&
 [ character(m1+m2)::( '1', '2345' ,&
                 ( '4' ,'789a' , &
                 ( '2','3456' ,  n=1,1) , '1234' , nn=1,1) , &
                    '3456' , nnn=1,1) , '5678' ] &
,2)
call s01(c11,1)
contains
subroutine s01(x,k)
character(*) x(:)
if (len(x)/=3)print *,k,len(x)
if (size(x)/=4)print *,k,size(x)
   if (x(1)/='1  ')print *,k,101,x(1)
   if (x(2)/='23 ')print *,k,102,x(2)
   if (x(3)/='456')print *,k,103,x(3)
   if (x(4)/='789')print *,k,104,x(4)
end subroutine
subroutine s02(x,k)
character(*) x(:)
if (len(x)/=3)print *,k,len(x)
if (size(x)/=9)print *,k,size(x)
   if (x(1)/='1  ')print *,k,101,x(1)
   if (x(2)/='234')print *,k,102,x(2)
   if (x(3)/='4  ')print *,k,103,x(3)
   if (x(4)/='789')print *,k,104,x(4)
   if (x(5)/='2  ')print *,k,105,x(5)
   if (x(6)/='345')print *,k,106,x(6)
   if (x(7)/='123')print *,k,107,x(7)
   if (x(8)/='345')print *,k,108,x(8)
   if (x(9)/='567')print *,k,109,x(9)
end subroutine
end
call s1
print *,'pass'
end
