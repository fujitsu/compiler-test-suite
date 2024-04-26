interface
subroutine sub2(b,f)
integer:: b(3)
integer*4::f
end subroutine
end interface
integer ::a(3)=[1,2,3]
integer ::c(3)=[1,2,3]
integer::k =2
integer*4::l
l = loc(c)
 call sub(a(1:3:k))
 if (any(a/=[11,2,13])) print *,102,a
 k =1
 call sub2(c(1:3:k),l)
 if (any(c/=[11,12,13])) print *,107
 print *,'pass'
 contains
subroutine sub(b)
integer,intent(out):: b(2)
 b = [1,3]
 if(loc(b).eq.loc(a))print*,"105"
 if (any(b/=[1,3])) print *,104,b
  b=b+10
  end subroutine
  end
subroutine sub2(b,f)
integer:: b(3)
integer*4::f
 if(loc(b).ne.f)print*,"105"
 if(is_contiguous(b).neqv..true.)print*,"106"
 if (any(b/=[1,2,3])) print *,109
 b =b +10
end subroutine

