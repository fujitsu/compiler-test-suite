call sub1;call sub2;call sub3;call sub4
call sub5;call sub6;call sub7
print*,'pass'
end

subroutine sub1
real::a(10),b(10)=1.0,c(10)=1.0
real::a1(10),b1(10)=1.0,c1(10)=1.0

forall(i=1:10)
  a(i)=b(i)+c(i)
end forall

do i=1,10
  a1(i)=b1(i)+c1(i)
  if(a(i)/=a1(i)) print*,'ng1'
enddo

end subroutine

subroutine sub2
real::a(10,10),b(10,10)=1.0,c(10,10)=1.0
real::a1(10,10),b1(10,10)=1.0,c1(10,10)=1.0

forall(i=1:10,j=1:10)
  a(i,j)=b(i,j)+c(i,j)
end forall

do i=1,10;doj=1,10
  a1(i,j)=b1(i,j)+c1(i,j)
  if(a(i,j)/=a1(i,j))print*,'ng2'
enddo;enddo

end subroutine

subroutine sub3
integer::a(10),b(10)=-1,c(10)=-1

forall(i=1:10)
  a(1:i)=b(1:i)+c(1:i)
endforall

do i=1,10
  if(a(i)/=-2) print*,'ng3'
enddo

end subroutine

subroutine sub4
integer a(10),b(10,10)

forall(i=1:10)
  a(i)=-1
  forall(j=1:10)
    b(i,j)=a(i)
  endforall
endforall

do i=1,10; do j=1,10
  if(a(i)/=-1) print*,'ng4a'
  if(b(i,j)/=-1) print*,'ng4b'
enddo;enddo

end subroutine

subroutine sub5
real a(10),b(10)
a=0
b=(/0,1,0,1,0,1,0,1,0,1/)

forall(i=1:10,b(i)/=0.0)
  a(i)=b(i)
endforall

do i=1,10
  if(a(i)/=b(i))print*,'ng5'
enddo

end subroutine

subroutine sub6
real a(10),b(10)
a=0
b=(/0,1,0,1,0,1,0,1,0,1/)

forall(i=1:10)
  where(b/=0.0) a=b
endforall

do i=1,10
  if(a(i)/=b(i))print*,'ng5'
enddo
 
end subroutine

subroutine sub7
integer c(10),c1(10)
c=(/1,2,3,4,5,6,7,8,9,10/)
c1=(/1,2,3,4,5,6,7,8,9,10/)

forall(i=1:9)
  c(i+1)=c(i)
end forall

c1(2:10)=c1(1:9)

do i=1,10
  if(c1(i)/= c(i))print*,'ng7'
enddo

end subroutine 
