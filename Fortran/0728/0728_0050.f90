interface
  subroutine sub2(b,i,j)
    real (8) , target  :: b(i,j)
  end subroutine
  subroutine sub222(b,i,j)
    real (8) , target  :: b(i,j)
  end subroutine
end interface

real (8) , target  :: b(2,2)
real (8) , pointer :: b_p(:,:)

b(1,1)=10;b(2,1)=20;b(1,2)=30;b(2,2)=40
b_p => b(:1,:)
call sub2(b_p,1,2)
call sub222(b_p,1,2)
print *,'pass'
end

subroutine sub2(b,i,j)
real (8) , target  :: b(i,j)
real (8) , pointer :: b_p(:,:)
b_p => b
call sub3(b_p,loc(b_p))
return
end

subroutine sub3(b,iloc)
      integer*8 iloc
real (8) b(1,2)
if (b(1,1).ne.10.0) write(6,*) "NG"
if (b(1,2).ne.30.0) write(6,*) "NG"
end

subroutine sub222(b,i,j)
real (8) , target  :: b(i,j)
type ty1
  real (8) , pointer :: b_p(:,:)
end type
type (ty1) :: str
str = ty1(b)
call sub3(str%b_p,loc(str%b_p))
return
end
