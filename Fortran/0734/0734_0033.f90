module mod
 integer,target:: i(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
 integer,parameter::n=20
 type x
   integer x1,x2
 end type
 type(x)::xx(3)=(/x(-1,-2),x(-3,-4),x(-5,-6)/)
 integer,pointer::w(:,:)
 contains
  subroutine sub(j)
  integer::j(:,:)
  write(n,*)'#1#',j
  j=reshape((/(k,k=101,109)/),(/3,3/))
  write(n,*)'#2#',j
  end subroutine
  subroutine subx(j)
  integer::j(:)
  write(n,*)'#11#',j
  j=reshape((/(k,k=-103,-101,1)/),(/3/))
  write(n,*)'#12#',j
  end subroutine
  subroutine suby
  write(n,*)'#21#',w
  w=reshape((/(k,k=201,209)/),(/3,3/))
  write(n,*)'#22#',w
  end subroutine
end module
use mod
call sub(i(1:5:2,1:5:2))
  write(n,*)'#3#',i
call subx(xx%x2)
  write(n,*)'#13#',xx
i=reshape((/(k,k=1,25)/),(/5,5/))
w=>i(1:5:2,1:5:2)
call suby
print *,'pass'
end
