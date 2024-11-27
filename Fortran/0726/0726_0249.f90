 call s1
 print *,'pass'
 end
 module m1
   type b
     integer::b0
     integer,pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   type c
     integer::b0
     type(c),pointer::b1,b2(:),b3(:,:,:,:,:,:,:)
   end type
   interface chk
    module procedure chkb,chkc
   end interface
   contains
   function   chkb(bv) 
   type (b)::bv,chkb
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   allocate(chkb%b1,chkb%b2(2),chkb%b3(1,1,1,1,1,1,2))
   chkb=b(1,null(),null(),null())
   end function
   function   chkc(cv)
   type (c)::cv,chkc
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(chkc%b1,chkc%b2(2),chkc%b3(1,1,1,1,1,1,2))
   chkc=c(1,null(),null(),null())
   end function
 end
subroutine s1
   do i=1,3
   call ss1
   call ss2
   call ss3
   end do
end 
subroutine ss1
  use m1
   type (b)::bv
   type (c),pointer::cv
   bv=chk(b(1,null(),null(),null()))
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   allocate(cv)
   cv=chk(c(1,null(),null(),null()))
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1=chk(c(1,null(),null(),null()))
   cv%b2(2)=chk(c(1,null(),null(),null()))
   cv%b3(1,1,1,1,1,1,2)=chk(c(1,null(),null(),null()))
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
  use m1
   type (b)::bv
    allocate(bv%b1,bv%b2(2),bv%b3(1,1,1,1,1,1,2))
   bv=chk(b(1,null(),null(),null()))
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
end
subroutine ss3
   use m1
   type (b)::bv
   type (c),pointer::cv
   allocate(bv%b1,bv%b2(2),bv%b3(1,1,1,1,1,1,2))
   allocate(cv)
   bv=chk(b(1,null(),null(),null()))
   if (associated(bv%b1))write(6,*) "NG"
   if (associated(bv%b2))write(6,*) "NG"
   if (associated(bv%b3))write(6,*) "NG"
   allocate(cv)
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv=chk(c(1,null(),null(),null()))
   if (associated(cv%b1))write(6,*) "NG"
   if (associated(cv%b2))write(6,*) "NG"
   if (associated(cv%b3))write(6,*) "NG"
   allocate(cv%b1,cv%b2(2),cv%b3(1,1,1,1,1,1,2))
   cv%b1=chk(c(1,null(),null(),null()))
   allocate(cv%b2(2))
   allocate(cv%b2(2)%b1)
   allocate(cv%b2(2)%b2(2))
   allocate(cv%b2(2)%b3(1,1,1,1,1,1,2))
   cv%b2(2)=chk(c(1,null(),null(),null()))
   allocate(cv%b3(1,1,1,1,1,1,2))
   allocate(cv%b3(1,1,1,1,1,1,2)%b1)
   allocate(cv%b3(1,1,1,1,1,1,2)%b2(2))
   allocate(cv%b3(1,1,1,1,1,1,2)%b3(1,1,1,1,1,1,2))
   cv%b3(1,1,1,1,1,1,2)=chk(c(1,null(),null(),null()))
   if (associated(cv%b1%b1))write(6,*) "NG"
   if (associated(cv%b1%b2))write(6,*) "NG"
   if (associated(cv%b1%b3))write(6,*) "NG"
   if (associated(cv%b2(2)%b1))write(6,*) "NG"
   if (associated(cv%b2(2)%b2))write(6,*) "NG"
   if (associated(cv%b2(2)%b3))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b1))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b2))write(6,*) "NG"
   if (associated(cv%b3(1,1,1,1,1,1,2)%b3))write(6,*) "NG"
   cv%b2=chk(c(1,null(),null(),null()))
   do i1=1,1;do i2=1,1;do i3=1,1;do i4=1,1;do i5=1,1;do i6=1,1;do i7=1,2
   allocate(cv%b3(i1,i2,i3,i4,i5,i6,i7))
   allocate(cv%b3(i1,i2,i3,i4,i5,i6,i7)%b1)
   allocate(cv%b3(i1,i2,i3,i4,i5,i6,i7)%b2(2))
   allocate(cv%b3(i1,i2,i3,i4,i5,i6,i7)%b3(1,1,1,1,1,1,2))
   cv%b3=chk(c(1,null(),null(),null()))
   if (associated(cv%b3(i1,i2,i3,i4,i5,i6,i7)%b1))write(6,*) "NG"
   if (associated(cv%b3(i1,i2,i3,i4,i5,i6,i7)%b2))write(6,*) "NG"
   if (associated(cv%b3(i1,i2,i3,i4,i5,i6,i7)%b3))write(6,*) "NG"
   end do;end do;end do;end do;end do;end do;end do
end
