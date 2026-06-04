call sub1; call sub2; call sub3; call sub4
call sub5; call sub6; call sub7; call sub8
print*,'pass'
end

subroutine sub1
real::a(10),b(10)=1.0,c(10)=1.0
real::a1(10),b1(10)=1.0,c1(10)=1.0

f1:forall(i=1:10)
f2:forall(j=1:10)
  a(i)=b(i)+c(j) 
end forall f2
end forall f1

do i=1,10
do j=1,10
  a1(i)=b1(i)+c1(j)
  if(a(i)/=a1(i)) print*,'ng1'
enddo
enddo
end subroutine

subroutine sub2
integer,pointer::a,b(:)
type c
 integer,pointer::c1,c2(:)
end type
type(c)::d,e(9)
integer,target::s,v(9)

s=1;v=(/1,2,3,4,5,6,7,8,9/)

forall(i=1:9)
  a=>s
  b=>v
  d%c1=>s
  d%c2=>v
  e(i)%c1=>s
  e(i)%c2=>v
end forall

do i=1,9 ;do j=1,9
  if(a .ne. 1) print*,'ng1'
  if(b(i) .ne. i) print*,'ng2'
  if(d%c1 .ne. 1) print*,'ng3'
  if(d%c2(i) .ne. i) print*,'ng4'
  if(e(i)%c1 .ne. 1) print*,'ng5'
  if(e(i)%c2(j) .ne. j) print*,'ng6'
enddo; enddo
end subroutine

subroutine sub3
integer a(10)
a=1
forall(i=1:10:2)
 a(i)=2
end forall
do i=1,10,2
  if(a(i).ne.2)print*,'ng1'
end do
do i=2,10,2
  if(a(i).ne.1)print*,'ng2'
end do
forall(i=10:1:-1)
 a(i)=i
end forall
do i=1,10
  if(a(i).ne.i)print*,'ng3'
end do
end subroutine

subroutine sub4
integer a(10,10),b(10,10)
do i=1,10; do j=1,10
  a(i,j)=i
enddo; enddo

forall(i=1:10)
 forall(j=1:10) b(i,j)=a(j,i)
end forall

do i=1,10; do j=1,10
  if(a(i,j) .ne. b(j,i) ) print*,'ng1'
enddo; enddo

forall(j=1:10)
 where(a(:,j)<=5)
   where(a(:,j)<=3)
     a(:,j)=1
   else where(a(:,j)>3)
     a(:,j)=2
   end where
 else where(a(:,j)>5 .and. a(:,j)<=7)
   a(:,j)=3
 else where
   a(:,j)=4
 end where
end forall

do i=1,10; do j=1,10
  select case(i)
  case(:3)
    if(a(i,j).ne.1)print*,'ng1'
  case(4:5)
    if(a(i,j).ne.2)print*,'ng2'
  case(6:7)
    if(a(i,j).ne.3)print*,'ng3'
  case(8:10)
    if(a(i,j).ne.4)print*,'ng4'
  end select
enddo; enddo
end subroutine

subroutine sub5
integer a(10)
i=100
forall(i=1:10)
  a(i)=i
end forall
if(i.ne.100)print*,'ng1'
do i=1,10
  if(a(i).ne.i)print*,'ng2'
end do
end

subroutine sub6
integer a(10),b(10)
integer a1(10),b1(10)
a=(/1,2,3,4,5,6,7,8,9,10/)
b=(/1,2,3,4,5,6,7,8,9,10/)
forall(i=1:9)
  a(i+1)= 10+i
  b(i)  = a(i)
end forall
a1=(/1,11,12,13,14,15,16,17,18,19/)
b1=(/1,11,12,13,14,15,16,17,18,10/)
do i=1,10
 if(a(i).ne.a1(i))print*,'ng1'
 if(b(i).ne.b1(i))print*,'ng2'
end do

a=(/1,2,3,4,5,6,7,8,9,10/)
b=(/1,2,3,4,5,6,7,8,9,10/)
forall(i=2:10)
  a(i-1)= 10+i
  b(i)  = a(i)
end forall
a1=(/12,13,14,15,16,17,18,19,20,10/)
b1=(/1,13,14,15,16,17,18,19,20,10/)
do i=1,10
 if(a(i).ne.a1(i))print*,'ng3'
 if(b(i).ne.b1(i))print*,'ng4'
end do
end subroutine

subroutine sub7
integer a(10),b(10),c(10)
a=(/2,0,2,0,2,0,2,0,2,0/)
b=2
forall(i=1:10, a(i).ne.0)
  b(i)=b(i)/a(i)
end forall
c=(/1,2,1,2,1,2,1,2,1,2/)
do i=1,10
  if(b(i).ne.c(i))print*,'ng'
enddo
end subroutine

pure function ipfun(a)
integer,intent(in):: a
ipfun=a+1
end function
elemental function iefun(a)
integer,intent(in):: a
iefun=a+2
end function

subroutine sub8
interface
 pure function ipfun(a)
 integer,intent(in):: a
 end function
 elemental function iefun(a)
 integer,intent(in):: a
 end function
end interface
integer a(10),b(10),d(10,10)

a=(/1,2,3,4,5,6,7,8,9,10/)
forall(i=1:10)
  a(i)=ipfun(a(i))  
end forall
b=(/2,3,4,5,6,7,8,9,10,11/)
do i=1,10
  if( a(i).ne.b(i))print*,'ng1'
end do

a=(/1,2,3,4,5,6,7,8,9,10/)
forall(j=1:10)
  d(j,:)=iefun(a(:))  
end forall
b=(/3,4,5,6,7,8,9,10,11,12/)
do i=1,10; do j=1,10
  if( d(j,i).ne.b(i))print*,'ng2'
end do ; enddo

a=(/1,2,3,4,5,6,7,8,9,10/)
forall(i=1:10)
  a(i)=max(a(i),5)  
end forall
b=(/5,5,5,5,5,6,7,8,9,10/)
do i=1,10
  if( a(i).ne.b(i))print*,'ng3'
end do

a=(/1,2,3,4,5,6,7,8,9,10/)
forall(i=1:10)
  a(i)=int(sin(real(a(i))))  
end forall
do i=1,10
  if( a(i).ne.int(sin(real(i))))print*,'ng4'
end do

a=(/1,2,3,4,5,6,7,8,9,10/)
forall(j=1:10)
  d(j,:)=int(sin(real(a(:))))  
end forall
do i=1,10; do j=1,10
  if( d(j,i).ne.int(sin(real(a(i)))))print*,'ng5'
end do ; enddo

end subroutine
