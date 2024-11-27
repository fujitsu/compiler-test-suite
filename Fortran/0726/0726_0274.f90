 call s1
 print *,'pass'
 end
 subroutine s1
 interface
   subroutine ss1(a1,a2)
    integer,pointer:: a1,a2(:,:,:,:,:,:,:)
   end subroutine
 endinterface
   integer,pointer:: a1,a2(:,:,:,:,:,:,:)
   type a
    integer,pointer:: a1,a2(:,:,:,:,:,:,:)
   end type
   type(a)::aa
   allocate(a1,a2(1,1,1,1,1,1,1),aa%a1,aa%a2(1,1,1,1,1,1,1))
   call ss1(null(),null())
   a1=>null()
   a2=>null()
   aa=a(null(),null())
   if (associated(a1))write(6,*) "NG"
   if (associated(a2))write(6,*) "NG"
   if (associated(aa%a1))write(6,*) "NG"
   if (associated(aa%a2))write(6,*) "NG"
 end
 subroutine ss1(a1,a2)
   integer,pointer:: a1,a2(:,:,:,:,:,:,:)
   if (associated(a1))write(6,*) "NG"
   if (associated(a2))write(6,*) "NG"
   allocate(a1,a2(1,1,1,1,1,1,1))
   if (.not.associated(a1))write(6,*) "NG"
   if (.not.associated(a2))write(6,*) "NG"
 end subroutine
