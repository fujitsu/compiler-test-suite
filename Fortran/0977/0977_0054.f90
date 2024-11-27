module m1
 type t
   integer,allocatable::a(:)
 end type
contains
 subroutine s1(v)
  type(t)::v
   allocate(v%a(2))
   v%a(1)=11
   v%a(1)=v%a(1)+1
   v%a(2)=12
   v%a(2)=v%a(2)+1
   if (v%a(1)/=12)write(6,*) "NG"
   if (v%a(2)/=13)write(6,*) "NG"
   call s3
   call s4
   contains
     subroutine s3
       v%a(1)=11
       v%a(1)=v%a(1)+1
       v%a(2)=12
       v%a(2)=v%a(2)+1
       if (v%a(1)/=12)write(6,*) "NG"
       if (v%a(2)/=13)write(6,*) "NG"
     end subroutine
     subroutine s4
       type(t)::v
       allocate(v%a(2))
       v%a(1)=11
       v%a(1)=v%a(1)+1
       v%a(2)=12
       v%a(2)=v%a(2)+1
       if (v%a(1)/=12)write(6,*) "NG"
       if (v%a(2)/=13)write(6,*) "NG"
     end subroutine
 end subroutine
 subroutine s2
  type(t)::v
   allocate(v%a(2))
   v%a(1)=11
   v%a(1)=v%a(1)+1
   v%a(2)=12
   v%a(2)=v%a(2)+1
   if (v%a(1)/=12)write(6,*) "NG"
   if (v%a(2)/=13)write(6,*) "NG"
 end subroutine
end
use m1
  type(t)::v,v2
call s1(v2)
   if (v2%a(1)/=12)write(6,*) "NG"
   if (v2%a(2)/=13)write(6,*) "NG"
call s2
   allocate(v%a(2))
   v%a(1)=11
   v%a(1)=v%a(1)+1
   v%a(2)=12
   v%a(2)=v%a(2)+1
   if (v%a(1)/=12)write(6,*) "NG"
   if (v%a(2)/=13)write(6,*) "NG"
call s3
print *,'pass'
   contains
 subroutine s3
  type(t)::v
   allocate(v%a(2))
   v%a(1)=11
   v%a(1)=v%a(1)+1
   v%a(2)=12
   v%a(2)=v%a(2)+1
   if (v%a(1)/=12)write(6,*) "NG"
   if (v%a(2)/=13)write(6,*) "NG"
 end subroutine
end


