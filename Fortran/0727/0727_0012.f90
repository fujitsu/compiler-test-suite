call test01()
call test02()
print *,'pass'
end

subroutine test01()
integer ia(10)
ia=0
forall (i=1:10,efun(i))
ia(i)=ifun(i)
end forall
if (ia(1).ne.11) write(6,*) "NG"
if (ia(9).ne.19) write(6,*) "NG"
if (ia(10).ne.0) write(6,*) "NG"
forall (i=1:10,efun(i))
ia=ifun(i)
end forall
if (ia(1).ne.19) write(6,*) "NG"
if (ia(9).ne.19) write(6,*) "NG"
if (ia(10).ne.19) write(6,*) "NG"
contains
elementalfunction ifun(i) result(ans)
intent(in) :: i
integer ans
ans=i+10
end function
elementalfunction efun(i) result(ans)
intent(in) :: i
logical ans
if (i.eq.10)then
 ans=.false.
else
ans=.true.
end if
end function
end

subroutine test02()
integer ia(10,10)
ia=0
forall (i=1:10,efun(i))
where(i.eq.ifun((/(i,j=1,10)/))) 
ia(i,:)=ifun(i)
end where 
end forall
do i=1,10 ;do j=1,10
k=i
if (i==10) k=0
if (ia(i,j).ne.k) write(6,*) "NG"
end do ;end do
contains
elementalfunction ifun(i) result(ans)
intent(in) :: i
integer ans
ans=i
end function
elementalfunction efun(i) result(ans)
intent(in) :: i
logical ans
if (i.eq.10)then
 ans=.false.
else
ans=.true.
end if
end function
end

