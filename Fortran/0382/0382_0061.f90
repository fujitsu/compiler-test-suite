subroutine s1
integer(1),parameter::n1=2
integer(2),parameter::n2=2
integer(4),parameter::n3=2
integer(8),parameter::n4=2
call s11
contains
subroutine s11
character(*),parameter,dimension(3):: x1= &
 [ character(n1):: '1','12','123']
character(*),parameter,dimension(3):: x2= &
 [ character(n2):: '1','12','123']
character(*),parameter,dimension(3):: x3= &
 [ character(n3):: '1','12','123']
character(*),parameter,dimension(3):: x4= &
 [ character(n4):: '1','12','123']
character(*),parameter,dimension(3):: x5= &
 [ character(2_1):: '1','12','123']
character(*),parameter,dimension(3):: x6= &
 [ character(2_2):: '1','12','123']
character(*),parameter,dimension(3):: x7= &
 [ character(2_4):: '1','12','123']
character(*),parameter,dimension(3):: x8= &
 [ character(2_8):: '1','12','123']
character(*),parameter,dimension(3):: x9= &
 [ character(1_1+1_1):: '1','12','123']
character(*),parameter,dimension(3):: xa= &
 [ character(1_2+1_2):: '1','12','123']
character(*),parameter,dimension(3):: xb= &
 [ character(1_4+1_4):: '1','12','123']
character(*),parameter,dimension(3):: xc= &
 [ character(1_8+1_8):: '1','12','123']
character(2)::z1*1='1',z2='12',z3='123'
call s12(x1)
call s12(x2)
call s12(x3)
call s12(x4)
call s12(x5)
call s12(x6)
call s12(x7)
call s12(x8)
call s12(x9)
call s12(xa)
call s12(xb)
call s12(xc)
call s12( [ character(n1):: '1','12','123'])
call s12( [ character(n2):: '1','12','123'])
call s12( [ character(n3):: '1','12','123'])
call s12( [ character(n4):: '1','12','123'])
call s12( &
 [ character(2_1):: '1','12','123'])
call s12( &
 [ character(2_2):: '1','12','123'])
call s12( &
 [ character(2_4):: '1','12','123'])
call s12( &
 [ character(2_8):: '1','12','123'])
call s12( &
 [ character(1_1+1_1):: '1','12','123'])
call s12( &
 [ character(1_2+1_2):: '1','12','123'])
call s12( &
 [ character(1_4+1_4):: '1','12','123'])
call s12( &
 [ character(1_8+1_8):: '1','12','123'])
call s12( [ character(n1):: z1,z2,z3])
call s12( [ character(n2):: z1,z2,z3])
call s12( [ character(n3):: z1,z2,z3])
call s12( [ character(n4):: z1,z2,z3])
call s12( &
 [ character(2_1):: z1,z2,z3])
call s12( &
 [ character(2_2):: z1,z2,z3])
call s12( &
 [ character(2_4):: z1,z2,z3])
call s12( &
 [ character(2_8):: z1,z2,z3])
call s12( &
 [ character(1_1+1_1):: z1,z2,z3])
call s12( &
 [ character(1_2+1_2):: z1,z2,z3])
call s12( &
 [ character(1_4+1_4):: z1,z2,z3])
call s12( &
 [ character(1_8+1_8):: z1,z2,z3])
end subroutine
subroutine s12(x)
character(*),dimension(:)::x
if (len(x)/=2)print *,101,len(x)
if (any(x/=['1 ','12','12']))print *,102,x
if (any(ubound(x)/=3))print *,103
end subroutine
end
call s1
print *,'pass'
end
