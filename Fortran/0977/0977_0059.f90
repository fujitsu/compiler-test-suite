module m1
 type t
   integer,allocatable::a(:)
 end type
contains
 subroutine s1(v)
  type(t),allocatable,target::v(:)
  type(t),pointer           ::p(:)
   allocate(v(2))
   allocate(v(2)%a(2))
   p=>v
   v(2)%a(1)=11
   v(2)%a(1)=v(2)%a(1)+1
   v(2)%a(2)=12
   v(2)%a(2)=v(2)%a(2)+1
   if (v(2)%a(1)/=12)write(6,*) "NG"
   if (v(2)%a(2)/=13)write(6,*) "NG"
   p(2)%a(1)=11
   v(2)%a(1)=p(2)%a(1)+1
   v(2)%a(2)=12
   p(2)%a(2)=v(2)%a(2)+1
   if (v(2)%a(1)/=12)write(6,*) "NG"
   if (v(2)%a(2)/=13)write(6,*) "NG"
   if (p(2)%a(1)/=12)write(6,*) "NG"
   if (p(2)%a(2)/=13)write(6,*) "NG"
   call s3
   call s4
   contains
     subroutine s3
       v(2)%a(1)=11
       v(2)%a(1)=v(2)%a(1)+1
       v(2)%a(2)=12
       v(2)%a(2)=v(2)%a(2)+1
       if (v(2)%a(1)/=12)write(6,*) "NG"
       if (v(2)%a(2)/=13)write(6,*) "NG"
      p(2)%a(1)=11
      v(2)%a(1)=p(2)%a(1)+1
      v(2)%a(2)=12
      p(2)%a(2)=v(2)%a(2)+1
      if (v(2)%a(1)/=12)write(6,*) "NG"
      if (v(2)%a(2)/=13)write(6,*) "NG"
      if (p(2)%a(1)/=12)write(6,*) "NG"
      if (p(2)%a(2)/=13)write(6,*) "NG"
     end subroutine
     subroutine s4
       type(t),allocatable,target::v(:)
       type(t),pointer           ::p(:)
       allocate(v(2))
       allocate(v(2)%a(2))
       p=>v
       v(2)%a(1)=11
       v(2)%a(1)=v(2)%a(1)+1
       v(2)%a(2)=12
       v(2)%a(2)=v(2)%a(2)+1
       if (v(2)%a(1)/=12)write(6,*) "NG"
       if (v(2)%a(2)/=13)write(6,*) "NG"
       p(2)%a(1)=11
       p(2)%a(1)=v(2)%a(1)+1
       v(2)%a(2)=12
       p(2)%a(2)=v(2)%a(2)+1
       if (p(2)%a(1)/=12)write(6,*) "NG"
       if (p(2)%a(2)/=13)write(6,*) "NG"
       if (v(2)%a(1)/=12)write(6,*) "NG"
       if (v(2)%a(2)/=13)write(6,*) "NG"
     end subroutine
 end subroutine
 subroutine s2
  type(t),allocatable,target::v(:)
  type(t),pointer           ::p(:)
   allocate(v(2))
   allocate(v(2)%a(2))
   p=>v
       p(2)%a(1)=11
       p(2)%a(1)=v(2)%a(1)+1
       v(2)%a(2)=12
       p(2)%a(2)=v(2)%a(2)+1
       if (p(2)%a(1)/=12)write(6,*) "NG"
       if (p(2)%a(2)/=13)write(6,*) "NG"
       if (v(2)%a(1)/=12)write(6,*) "NG"
       if (v(2)%a(2)/=13)write(6,*) "NG"
   v(2)%a(1)=11
   v(2)%a(1)=v(2)%a(1)+1
   v(2)%a(2)=12
   v(2)%a(2)=v(2)%a(2)+1
   if (v(2)%a(1)/=12)write(6,*) "NG"
   if (v(2)%a(2)/=13)write(6,*) "NG"
 end subroutine
end
use m1
  type(t),allocatable,target,dimension(:)::v,v2
  type(t),pointer           ::p(:)
call s1(v2)
  p=>v2
   if (v2(2)%a(1)/=12)write(6,*) "NG"
   if (v2(2)%a(2)/=13)write(6,*) "NG"
       if (p(2)%a(1)/=12)write(6,*) "NG"
       if (p(2)%a(2)/=13)write(6,*) "NG"
call s2
   allocate(v(2))
   allocate(v(2)%a(2))
  p=>v
   v(2)%a(1)=11
   v(2)%a(1)=v(2)%a(1)+1
   v(2)%a(2)=12
   v(2)%a(2)=v(2)%a(2)+1
   if (v(2)%a(1)/=12)write(6,*) "NG"
   if (v(2)%a(2)/=13)write(6,*) "NG"
       p(2)%a(1)=11
       p(2)%a(1)=v(2)%a(1)+1
       v(2)%a(2)=12
       p(2)%a(2)=v(2)%a(2)+1
       if (p(2)%a(1)/=12)write(6,*) "NG"
       if (p(2)%a(2)/=13)write(6,*) "NG"
       if (v(2)%a(1)/=12)write(6,*) "NG"
       if (v(2)%a(2)/=13)write(6,*) "NG"
call s3
print *,'pass'
   contains
 subroutine s3
  type(t),allocatable,target::v(:)
   allocate(v(2))
   allocate(v(2)%a(2))
   v(2)%a(1)=11
   v(2)%a(1)=v(2)%a(1)+1
   v(2)%a(2)=12
   v(2)%a(2)=v(2)%a(2)+1
   if (v(2)%a(1)/=12)write(6,*) "NG"
   if (v(2)%a(2)/=13)write(6,*) "NG"
 end subroutine
end


