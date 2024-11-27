 call s1
 print *,'pass'
 end
subroutine s1
   do i=1,3
   call ss1
   call ss2
   call ss3
   end do
end 
subroutine ss1
   type b
     integer::b0
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type (b)::bv
   type c
     integer::b0
     type(c),pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type (c),pointer::cv
   bv=b(1,null(),null(),null())
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   allocate(cv)
   cv=c(1,null(),null(),null())
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1=c(1,null(),null(),null())
   cv%b2(2)=c(1,null(),null(),null())
   cv%b3(1,1,1,1,1,1,2)=c(1,null(),null(),null())
   if (associated(cv%b1%b1))write(6,*) "NG"
   if (associated(cv%b1%b2))write(6,*) "NG"
   if (associated(cv%b1%b3))write(6,*) "NG"
   if (associated(cv%b2(2)%b1))write(6,*) "NG"
   if (associated(cv%b2(2)%b2))write(6,*) "NG"
   if (associated(cv%b2(2)%b3))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b1))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b2))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b3))write(6,*) "NG"
end
subroutine ss2
   type b
     integer::b0
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type (b)::bv
    allocate(bv%b1,bv%b2(2),bv%b3(1,1,1,1,1,1,2))
   bv=b(1,null(),null(),null())
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
end
subroutine ss3
   type b
     integer::b0
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type (b)::bv
   type c
     integer::b0
     type(c),pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type (c),pointer::cv
   allocate(bv%b1,bv%b2(2),bv%b3(1,1,1,1,1,1,2))
   allocate(cv)
   bv=b(1,null(),null(),null())
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   allocate(cv)
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv=c(1,null(),null(),null())
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1=c(1,null(),null(),null())
   allocate(cv%b2(2))
   allocate(cv%b2(2)%b1)
   allocate(cv%b2(2)%b2(2))
   allocate(cv%b2(2)%b3(1,1,1,1,1,1,2))
   cv%b2(2)=c(1,null(),null(),null())
   allocate(cv%b3(1,1,1,1,1,1,2))
   allocate(cv%b3(1,1,1,1,1,1,2)%b1)
   allocate(cv%b3(1,1,1,1,1,1,2)%b2(2))
   allocate(cv%b3(1,1,1,1,1,1,2)%b3(1,1,1,1,1,1,2))
   cv%b3(1,1,1,1,1,1,2)=c(1,null(),null(),null())
   if (associated(cv%b1%b1))write(6,*) "NG"
   if (associated(cv%b1%b2))write(6,*) "NG"
   if (associated(cv%b1%b3))write(6,*) "NG"
   if (associated(cv%b2(2)%b1))write(6,*) "NG"
   if (associated(cv%b2(2)%b2))write(6,*) "NG"
   if (associated(cv%b2(2)%b3))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b1))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b2))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b3))write(6,*) "NG"
end
