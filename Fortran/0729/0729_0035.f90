interface
  subroutine sub2(b)
    real (8) , pointer :: b(:,:)
  end subroutine
end interface

real (8) , target :: b(2,2)
real (8) , pointer :: b_p(:,:)

b(1,1)=10;b(2,1)=20;b(1,2)=30;b(2,2)=40
b_p => b(:1,:)
call sub2(b_p)
print *,'pass'
end

subroutine sub2(b)
real (8) , pointer :: b(:,:)
real (8) , pointer :: b_p(:,:)
b_p => b
call sub3(b_p)
end

subroutine sub3(b)
real (8) b(1,2)
if(any(abs(b(1,:)-(/10,30/))>0.001))write(6,*) "NG"
end
