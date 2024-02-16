call test01()
print *,"pass"
end

subroutine test01()
integer a(1,1,1,100),b(1,1,1,100),c(1,1,1,100),d(1,1,1,100)
common /com/ a,b,c,d
integer ::arr(100)
ifun()=c(1,1,1,2)
ifun2(i)=c(1,1,1,i)
arr=1
n=100
do i1=1,n
 a(1,1,1,i1)=i1
do i2=1,n
 b(1,1,1,i2)=i2
do i3=1,n
 c(1,1,1,i3)=i3
do i4=1,n
 d(1,1,1,i4)=i4
end do
end do
end do
end do
 a(1,1,1,1) = d(1,1,1,b(1,1,1,1)) 
 if (a(1,1,1,1).ne.1) print *,"err"
if (.false.) print *,(arr(a(1,1,1,1)),i=1,100)
if (.false.) print *,(a(1,1,1,1),i=1,100)
if (.false.) print *,(arr(i+a(1,1,1,1)-1),i=1,100)
if (.false.) print *,(arr((a(1,1,1,1))),i=1,100)
if (.false.) print *,((a(1,1,1,1)),i=1,100)
if (.false.) print *,(arr((i)+a(1,1,1,1)-1),i=1,100)
if (.false.) print *,a(1,1,1,1)
if (.false.) print *,a
if (.false.) print *,a(1,1,1,:)
if (.false.) print *,a(1,1,1,1:100)
if (.false.) print *,a(1,1,:,2)
 if (ifun().ne.2) print *,"err"
 if (ifun2(10).ne.10) print *,"err"
 call sub(c(1,1,1,20))
 select case(c(1,1,1,20)) 
  case (20)
    ! ok
  case default
    print *,"err"
 end select
 forall (i=1:100)
  forall (j=1:100)
   a(1,1,1,i) = b(1,1,1,j)
  end forall
 end forall
 where (a>b)
   a=b
 end where
contains
 subroutine sub(ii)
  integer ii
  if (ii.ne.20) print *,"err"
 end subroutine 
end subroutine
