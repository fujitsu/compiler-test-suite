call test01()
call test02()
print *,'pass'
end

subroutine test01()
interface 
elemental function   ifun(a)
intent(in) :: a
integer :: a
end function
end interface

integer aa(2,10),ia(2,10),ib(2,10),ic(2,10)
aa(1,1:10)=(/1,2,3,4,5,6,7,8,9,10/)
aa(2,1:10)=(/1,2,3,4,5,6,7,8,9,10/)+10
ib=0
ic=0
forall (i=1:2,j=1:10:2)
  ia(i,j:j+1)=ifun(aa(i,j:j+1))
  forall (k=1:10:2)
  where(ia(i,k:k+1).eq.(/k,k+1/))
    ib(i,k:k+1) = ia(i,k:k+1)
  else where
    ic(i,k:k+1) = ia(i,k:k+1)
  end where
end forall
end forall
do i=1,10
if (ib(1,i).ne.i) write(6,*) "NG"
if (ib(2,i).ne.0) write(6,*) "NG"
if (ic(1,i).ne.0) write(6,*) "NG"
if (ic(2,i).ne.i+10) write(6,*) "NG"
end do
end subroutine

elemental function ifun(a)
intent(in) :: a
integer :: a
ifun=a
end function

subroutine test02()
integer aa(10,10),ia(10,10),ib(10,10),ic(10,10)
 do i=1,10
aa(i,1:10)=(/1,2,3,4,5,6,7,8,9,10/)+(i-1)*10
end do
ib=0
ic=0
forall (i=1:10,j=1:10:2)
  ia(i,j:j+1)=aa(i,j:j+1)
  forall (k=1:10:2,(i.eq.1).or.(i.eq.5))
  where(ia(i,k:k+1).eq.(/k,k+1/))
    ib(i,k:k+1) = ia(i,k:k+1)
  else where
    ic(i,k:k+1) = ia(i,k:k+1)
  end where
end forall
end forall
do i=1,10
if (ib(1,i).ne.i) write(6,*) "NG"
if (ib(5,i).ne.0) write(6,*) "NG"
if (ic(1,i).ne.0) write(6,*) "NG"
if (ic(5,i).ne.i+40) write(6,*) "NG"
end do
end subroutine
