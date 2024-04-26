call test01()
call test02()
call test03()
print *,'pass'
end


subroutine test01() 
use mod01
call sub1()
call sub2()
call sub3()
if (i.ne.111) print *,'err'
end subroutine

module mod01
integer i
contains
subroutine sub1()
i=1
end subroutine
subroutine sub2()
i=i+10
end subroutine
subroutine sub3()
i=i+100
end subroutine
end module

subroutine test02()
use mod02
call sub1()
call sub2()
call sub3()
if (i.ne.222) print *,'err'
end subroutine

module mod02
integer i
contains
subroutine sub1()
i=2
end subroutine
subroutine sub2()
i=i+20
end subroutine
subroutine sub3()
i=i+200
end subroutine
end module

subroutine test03()
use mod03
call sub1()
call sub2()
call sub3()
end subroutine

module mod03
integer a(10,10),j
contains
subroutine sub1()
 a=0
 j=10
 forall (i=1:j:1,k=1:10:1,.true.) a(i,k)=k
end subroutine
subroutine sub2()
 do i=1,10,1
  do j=1,10,1
   if (a(i,j).ne.j) print *,'err'
  end do
 end do
end subroutine
subroutine sub3()
 integer p
 p=1
 j=2
 forall (i=p:j:p,k=p:j:p,.true.) a(i,k)=k
 forall (i=p:j:p,k=p:j:p,.true.)
 forall (i1=p:j:p,k1=p:j:p,.true.)
 forall (i2=p:j:p,k2=p:j:p,.true.)
 forall (i3=p:j:p,k3=p:j:p,.true.)
 forall (i4=p:j:p,k4=p:j:p,.true.)
 forall (i5=p:j:p,k5=p:j:p,.true.)
 forall (i6=p:j:p,k6=p:j:p,.true.)
 forall (i7=p:j:p,k7=p:j:p,.true.)
 forall (i8=p:j:p,k8=p:j:p,.true.)
  ia=int(i8)
 end forall 
 end forall 
 end forall 
 end forall 
 end forall 
 end forall 
 end forall 
 end forall 
 end forall 
ia=ia
end subroutine
end module
