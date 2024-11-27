 call s1
 print *,'pass'
 end
 module m1
     interface ss2
       module procedure ss2
     end interface
     interface
     subroutine ss3(b1,b2,b3)
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
     end subroutine
     end interface
   contains
subroutine ss2(b1,b2,b3)
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   if (associated(b1))write(6,*) "NG"
   if (associated(b2))write(6,*) "NG"
   if (associated(b3))write(6,*) "NG"
end subroutine
end
subroutine s1
 use m1
   call ss1(null(),null(),null())
   call ss2(null(),null(),null())
   call ss3(null(),null(),null())
 contains
subroutine ss1(b1,b2,b3)
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   if (associated(b1))write(6,*) "NG"
   if (associated(b2))write(6,*) "NG"
   if (associated(b3))write(6,*) "NG"
end subroutine
end
subroutine ss3(b1,b2,b3)
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   if (associated(b1))write(6,*) "NG"
   if (associated(b2))write(6,*) "NG"
   if (associated(b3))write(6,*) "NG"
end subroutine
