 call s1
 print *,'pass'
 end
 module m1
  integer::i2=2,i3=3
  type w
  integer,pointer,dimension(:,:)::a2=>null()
  integer,dimension(2,3)::a1=reshape((/1,2,3,4,5,6/),(/2,3/))
  end type
  contains
   elemental subroutine ss1(x1,x2)
   integer,intent(out)::x1
   integer,intent(in)::x2
   x1=2
   x1=x1+x2
   end subroutine
   elemental subroutine ss2(x2,x1)
   integer,intent(out)::x1
   integer,intent(in)::x2
   x1=2
   x1=x1+x2
   end subroutine
 end
 subroutine s1
 use m1
 type(w),pointer::x
!
 allocate(x)
 call ss1(x%a1,(x%a1))
 if (any(x%a1/=reshape((/1,2,3,4,5,6/)+2,(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 call ss1(x%a1(:,:),(x%a1(:,:)))
 if (any(x%a1/=reshape((/1,2,3,4,5,6/)+2,(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 call ss1(x%a1,+x%a1)
 if (any(x%a1/=reshape((/1,2,3,4,5,6/)+2,(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 call ss1(x%a1(i2,i3),(x%a1(i2,i3)))
 if (any(x%a1/=reshape((/1,2,3,4,5,6+2/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2((x%a2),x%a2)
 if (any(x%a2/=reshape((/1,2,3,4,5,6/)+2,(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2((x%a2(:,:)),x%a2(:,:))
 if (any(x%a2/=reshape((/1,2,3,4,5,6/)+2,(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2(+x%a2,x%a2)
 if (any(x%a2/=reshape((/1,2,3,4,5,6/)+2,(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2((x%a2(i2,i3)),x%a2(i2,i3))
 if (any(x%a2/=reshape((/1,2,3,4,5,6+2/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
 end
 
