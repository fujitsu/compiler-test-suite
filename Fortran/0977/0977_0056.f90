module m1
 type x
   integer,allocatable::a(:)
 end type
 type t
   type(x),pointer::p(:)
 end type
contains
 subroutine s1(v)
  type(t)::v,z
   allocate(v%p(2))
   z%p=>v%p
   allocate(v%p(2)%a(2))
   v%p(2)%a(1)=11
   v%p(2)%a(1)=z%p(2)%a(1)+1
   v%p(2)%a(2)=12
   z%p(2)%a(2)=v%p(2)%a(2)+1
   if (z%p(2)%a(1)/=12)write(6,*) "NG"
   if (z%p(2)%a(2)/=13)write(6,*) "NG"
   if (v%p(2)%a(1)/=12)write(6,*) "NG"
   if (v%p(2)%a(2)/=13)write(6,*) "NG"
   call s3
   call s4
   contains
     subroutine s3
       v%p(2)%a(1)=11
       z%p(2)%a(1)=v%p(2)%a(1)+1
       v%p(2)%a(2)=12
       v%p(2)%a(2)=z%p(2)%a(2)+1
       if (v%p(2)%a(1)/=12)write(6,*) "NG"
       if (v%p(2)%a(2)/=13)write(6,*) "NG"
       if (z%p(2)%a(1)/=12)write(6,*) "NG"
       if (z%p(2)%a(2)/=13)write(6,*) "NG"
     end subroutine
     subroutine s4
       type(t)::v,z
       allocate(v%p(2))
       z%p=>v%p
       allocate(v%p(2)%a(2))
       z%p(2)%a(1)=11
       z%p(2)%a(1)=v%p(2)%a(1)+1
       v%p(2)%a(2)=12
       z%p(2)%a(2)=v%p(2)%a(2)+1
       if (v%p(2)%a(1)/=12)write(6,*) "NG"
       if (v%p(2)%a(2)/=13)write(6,*) "NG"
       if (z%p(2)%a(1)/=12)write(6,*) "NG"
       if (z%p(2)%a(2)/=13)write(6,*) "NG"
     end subroutine
 end subroutine
 subroutine s2
  type(t)::v,z
   allocate(v%p(2))
   z%p=>v%p
   allocate(v%p(2)%a(2))
   z%p(2)%a(1)=11
   v%p(2)%a(1)=z%p(2)%a(1)+1
   v%p(2)%a(2)=12
   v%p(2)%a(2)=z%p(2)%a(2)+1
   if (v%p(2)%a(1)/=12)write(6,*) "NG"
   if (v%p(2)%a(2)/=13)write(6,*) "NG"
   if (z%p(2)%a(1)/=12)write(6,*) "NG"
   if (z%p(2)%a(2)/=13)write(6,*) "NG"
 end subroutine
end
use m1
  type(t)::v,v2,z
call s1(v2)
   z%p=>v2%p
   if (v2%p(2)%a(1)/=12)write(6,*) "NG"
   if (v2%p(2)%a(2)/=13)write(6,*) "NG"
   if (z%p(2)%a(1)/=12)write(6,*) "NG"
   if (z%p(2)%a(2)/=13)write(6,*) "NG"
call s2
   allocate(v%p(2))
   allocate(v%p(2)%a(2))
   z%p=>v%p
   v%p(2)%a(1)=11
   z%p(2)%a(1)=v%p(2)%a(1)+1
   z%p(2)%a(2)=12
   v%p(2)%a(2)=v%p(2)%a(2)+1
   if (v%p(2)%a(1)/=12)write(6,*) "NG"
   if (v%p(2)%a(2)/=13)write(6,*) "NG"
   if (z%p(2)%a(1)/=12)write(6,*) "NG"
   if (z%p(2)%a(2)/=13)write(6,*) "NG"
call s3
print *,'pass'
   contains
 subroutine s3
  type(t)::v,z
   allocate(v%p(2))
   z%p=>v2%p
   allocate(v%p(2)%a(2))
   v%p(2)%a(1)=11
   v%p(2)%a(1)=v%p(2)%a(1)+1
   v%p(2)%a(2)=12
   v%p(2)%a(2)=v%p(2)%a(2)+1
   if (z%p(2)%a(1)/=12)write(6,*) "NG"
   if (z%p(2)%a(2)/=13)write(6,*) "NG"
   if (v%p(2)%a(1)/=12)write(6,*) "NG"
   if (v%p(2)%a(2)/=13)write(6,*) "NG"
 end subroutine
end


