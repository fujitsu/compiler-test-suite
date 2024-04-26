integer ::a(3)=[1,2,3]
integer ::c(3)=[1,2,3]
integer::k=1
 call sub(a(1:3:k))
 if (any(a/=[11,12,13])) print *,102
 call sub2(c(1:3:k))
 if (any(c/=[11,12,13])) print *,102
 print *,'pass'
 contains
subroutine sub(b)
integer,contiguous,intent(inout):: b(:)
 if(loc(b).ne.loc(a))print*,"101"
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,2,3])) print *,101
  b=b+10
  end subroutine
subroutine sub2(b)
integer,intent(inout):: b(3)
 if(loc(b).ne.loc(c))print*,"101"
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,2,3])) print *,101
  b=b+10
  end subroutine
  end

