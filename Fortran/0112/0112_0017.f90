call sub1;call sub2;call sub3;call sub4
print*,'pass'
end

subroutine sub1
integer a(5,5)
forall(i=1:5)
forall(j=1:5)
  a(i,j)=-1
end forall
forall(j=1:5)
  a(i,j)=a(i,j)-1
end forall
forall(j=1:5)
  a(i,j)=a(i,j)-1
end forall
end forall

do i=1,5
do j=1,5
  if(a(i,j).ne.-3)print*,'ng'
enddo;enddo
end subroutine

subroutine sub2
integer a(5,5)
forall(i=1:5)
a(i,5)=1
forall(j=1:4)
  a(i,j)=-1
end forall
a(i,5)=a(i,5)+1
forall(j=1:4)
  a(i,j)=a(i,j)-1
end forall
a(i,5)=a(i,5)+1
forall(j=1:4)
  a(i,j)=a(i,j)-1
end forall
a(i,5)=a(i,5)+1
end forall
 
do i=1,5
do j=1,5
  if(j.ne.5) then
    if(a(i,j).ne.-3)print*,'ng1'
  else
    if(a(i,j).ne.4)print*,'ng2'
  endif
enddo;enddo
end subroutine

subroutine sub3
integer a(5,5)
forall(i=1:5)
forall(j=1:5) a(i,j)=-1
forall(j=1:5) a(i,j)=a(i,j)-1
forall(j=1:5) a(i,j)=a(i,j)-1
end forall

do i=1,5
do j=1,5
  if(a(i,j).ne.-3)print*,'ng'
enddo;enddo
end subroutine

subroutine sub4
integer a(5,5)
forall(i=1:5)
a(i,5)=1
forall(j=1:4) a(i,j)=-1
a(i,5)=a(i,5)+1
forall(j=1:4) a(i,j)=a(i,j)-1
a(i,5)=a(i,5)+1
forall(j=1:4) a(i,j)=a(i,j)-1
a(i,5)=a(i,5)+1
end forall

do i=1,5
do j=1,5
  if(j.ne.5) then
    if(a(i,j).ne.-3)print*,'ng1'
  else
    if(a(i,j).ne.4)print*,'ng2'
  endif
enddo;enddo
end subroutine
