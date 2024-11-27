interface
  subroutine sub2(b)
    integer  , target  :: b(:,:)
  end subroutine
  subroutine sub1(b)
    integer  , pointer :: b(:,:)
  end subroutine
end interface
integer  , target  :: b(3,3)
integer  , pointer :: b_p(:,:)
b(1,1)=1;b(2,1)=4;b(3,1)=7;
b(1,2)=2;b(2,2)=5;b(3,2)=8;
b(1,3)=3;b(2,3)=6;b(3,3)=9;
b_p => b(:1,:)
call sub2(b_p)
call sub1(b_p)
print *,'pass'
end

subroutine sub2(b)
integer  , target  :: b(:,:)
integer  , pointer :: b_p(:,:)
b_p => b
call sub3(b_p)
call sub4(b_p)
call sub5(b_p)
call sub6(b_p)
call sub7(b_p)
return
contains
subroutine sub5(ib)
integer  ib(1,3)
if (ib(1,1).ne.1) write(6,*) "NG"
if (ib(1,2).ne.2) write(6,*) "NG"
if (ib(1,3).ne.3) write(6,*) "NG"
end subroutine
subroutine sub6(ib)
integer ,target  :: ib(1,3)
if (ib(1,1).ne.1) write(6,*) "NG"
if (ib(1,2).ne.2) write(6,*) "NG"
if (ib(1,3).ne.3) write(6,*) "NG"
end subroutine
subroutine sub7(ib)
integer , pointer :: ib(:,:)
if (ib(1,1).ne.1) write(6,*) "NG"
if (ib(1,2).ne.2) write(6,*) "NG"
if (ib(1,3).ne.3) write(6,*) "NG"
end subroutine

end

subroutine sub3(b)
integer  b(1,3)
if (b(1,1).ne.1) write(6,*) "NG"
if (b(1,2).ne.2) write(6,*) "NG"
if (b(1,3).ne.3) write(6,*) "NG"
end

subroutine sub4(b)
integer  b(3)
if (b(1).ne.1) write(6,*) "NG"
if (b(2).ne.2) write(6,*) "NG"
if (b(3).ne.3) write(6,*) "NG"
end

subroutine sub1(b)
integer  , pointer :: b(:,:)
integer  , pointer :: b_p(:,:)
b_p => b
call sub3(b_p)
call sub4(b_p)
call sub5(b_p)
call sub6(b_p)
call sub7(b_p)
return
contains
subroutine sub5(ib)
integer  ib(1,3)
if (ib(1,1).ne.1) write(6,*) "NG"
if (ib(1,2).ne.2) write(6,*) "NG"
if (ib(1,3).ne.3) write(6,*) "NG"
end subroutine
subroutine sub6(ib)
integer ,target  :: ib(1,3)
if (ib(1,1).ne.1) write(6,*) "NG"
if (ib(1,2).ne.2) write(6,*) "NG"
if (ib(1,3).ne.3) write(6,*) "NG"
end subroutine
subroutine sub7(ib)
integer , pointer :: ib(:,:)
if (ib(1,1).ne.1) write(6,*) "NG"
if (ib(1,2).ne.2) write(6,*) "NG"
if (ib(1,3).ne.3) write(6,*) "NG"
end subroutine
end
