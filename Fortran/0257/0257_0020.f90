interface
subroutine sub2(b,f)
integer,optional,contiguous:: b(:,:)
integer*4::f
end subroutine
end interface
integer ::a(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer ::c(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer ::r(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer ::p(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer::k =1
integer*4::l
l = loc(c)
 call sub(a(:,1:3:k), r(1:3:k,1:3:k), p(1:3:2,1:3:2))
 if (any(a /=reshape([41,42,43,44,45,46,47,48,49],[3,3]))) print *,102,a
 k =1
 call sub2(c(:,1:3:k),l)
 if (any(c/=reshape([11,12,13,14,15,16,17,18,19],[3,3]))) print *,1011
 print *,'pass'
 contains
subroutine sub(b,c1,d)
integer,optional,contiguous:: b(:,:)
integer:: c1(3,3)
integer,optional:: d(:,:)
integer::p =1
integer*4::q
q = loc(a)
 if(present(b))then
 if(loc(b).ne.loc(a))print*,"105"
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=reshape([1,2,3,4,5,6,7,8,9],[3,3]))) print *,104,b
  b=b+10
  call sub2(b(1:3:p,1:3:p),q)
  endif
 if(loc(r).ne.loc(c1))print*,"107"
 if(present(d))then
 if(loc(p).eq.loc(d))print*,"109"
 endif
 call sub9(b,c1,d)
  end subroutine
subroutine sub9(b,c1,d)
integer,optional,contiguous:: b(:,:)
integer:: c1(3,3)
integer,optional:: d(:,:)
integer::p =1
integer*4::q
q = loc(a)
 if(present(b))then
 if(loc(b).ne.loc(a))print*,"105"
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=reshape([21,22,23,24,25,26,27,28,29],[3,3]))) print *,104,b
  b=b+10
  call sub2(b(1:3:p,1:3:p),q)
  endif
 if(loc(r).ne.loc(c1))print*,"107"
 if(present(d))then
 if(loc(p).eq.loc(d))print*,"109"
 endif
  end subroutine

  end
subroutine sub2(b,f)
integer,optional,contiguous:: b(:,:)
integer*4::f
 if(present(b))then
 if(loc(b).ne.f)print*,"105"
 if(is_contiguous(b).neqv..true.)print*,"102"
 b =b +10
 endif
end subroutine

