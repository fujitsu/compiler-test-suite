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
   integer,pointer::a1,a2(:),a3(:,:,:,:,:,:,:)
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
   a1=>null()
   a2=>null()
   a3=>null()
   bv%b1=>null()
   bv%b2=>null()
   bv%b3=>null()
   cv=>null()
   if (associated(a1))write(6,*) "NG"
   if (associated(a2))write(6,*) "NG"
   if (associated(a3))write(6,*) "NG"
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   if (associated(cv))write(6,*) "NG"
   allocate(cv)
   cv%b1=>null()
   cv%b2=>null()
   cv%b3=>null()
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1%b1=>null()
   cv%b1%b2=>null()
   cv%b1%b3=>null()
   cv%b2(2)%b1=>null()
   cv%b2(2)%b2=>null()
   cv%b2(2)%b3=>null()
   cv%b3(1,1,1,1,1,1,2)%b1=>null()
   cv%b3(1,1,1,1,1,1,2)%b2=>null()
   cv%b3(1,1,1,1,1,1,2)%b3=>null()
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
   integer,pointer::a1,a2(:),a3(:,:,:,:,:,:,:)
   type b
     integer::b0
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type (b)::bv
    allocate(a1,a2(2),a3(1,1,1,1,1,1,2))
    allocate(bv%b1,bv%b2(2),bv%b3(1,1,1,1,1,1,2))
   a1=>null()
   a2=>null()
   a3=>null()
   bv%b1=>null()
   bv%b2=>null()
   bv%b3=>null()
   if (associated(a1))write(6,*) "NG"
   if (associated(a2))write(6,*) "NG"
   if (associated(a3))write(6,*) "NG"
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
end
subroutine ss3
   integer,pointer::a1,a2(:),a3(:,:,:,:,:,:,:)
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
   allocate(a1,a2(2),a3(1,1,1,1,1,1,2))
   allocate(bv%b1,bv%b2(2),bv%b3(1,1,1,1,1,1,2))
   allocate(cv)
   a1=>null()
   a2=>null()
   a3=>null()
   bv%b1=>null()
   bv%b2=>null()
   bv%b3=>null()
   cv=>null()
   if (associated(a1))write(6,*) "NG"
   if (associated(a2))write(6,*) "NG"
   if (associated(a3))write(6,*) "NG"
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   if (associated(cv))write(6,*) "NG"
   allocate(cv)
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1=>null()
   cv%b2=>null()
   cv%b3=>null()
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1%b1=>null()
   cv%b1%b2=>null()
   cv%b1%b3=>null()
   allocate(cv%b2(2))
   allocate(cv%b2(2)%b1)
   allocate(cv%b2(2)%b2(2))
   allocate(cv%b2(2)%b3(1,1,1,1,1,1,2))
   cv%b2(2)%b1=>null()
   cv%b2(2)%b2=>null()
   cv%b2(2)%b3=>null()
   allocate(cv%b3(1,1,1,1,1,1,2))
   allocate(cv%b3(1,1,1,1,1,1,2)%b1)
   allocate(cv%b3(1,1,1,1,1,1,2)%b2(2))
   allocate(cv%b3(1,1,1,1,1,1,2)%b3(1,1,1,1,1,1,2))
   cv%b3(1,1,1,1,1,1,2)%b1=>null()
   cv%b3(1,1,1,1,1,1,2)%b2=>null()
   cv%b3(1,1,1,1,1,1,2)%b3=>null()
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
