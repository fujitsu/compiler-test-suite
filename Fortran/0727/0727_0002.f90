call test01()
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
forall (i=1:2,j=1:10)
  ia(i,:)=ifun(aa(i,:))
  where(ia(i,:).eq.(/1,2,3,4,5,6,7,8,9,10/))
    ib(i,:) = ia(i,:)
  else where
    ic(i,:) = ia(i,:)
  end where
end forall
do i=1,10
if (ib(1,i).ne.i) write(6,*) "NG"
if (ic(2,i).ne.i+10) write(6,*) "NG"
end do

call sss()

contains
subroutine sss()
interface assignment(=)
elemental subroutine iii(i1,i2)
integer :: i1
character :: i2
intent(in) :: i2
intent(inout) :: i1
end subroutine
end interface
integer ii(2)
forall (i=1:ifun01(),ifun02())
 ii='a'
 where (ifun01().eq.(/1,2/)) 
   ii='a'
 else where((/ifun02(),.true./))
   ii=ifun01()
 else where
   ii='a'
 end where
 ii=ifun01()
end forall
end subroutine
pure function ifun01()
ifun01 = 1
end function  
pure function ifun02()
logical ifun02
ifun02=.true.
end function  
end
elemental subroutine iii(i1,i2)
integer :: i1
character :: i2
intent(in) :: i2
intent(inout) :: i1
i1=1
end subroutine

elemental function ifun(a)
intent(in) :: a
integer :: a
ifun=a
end function
