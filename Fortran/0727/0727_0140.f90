 call s1
 print *,'pass'
 end
 module m1
  integer::i2=2,i3=3
  type w
  character,pointer,dimension(:,:)::a2=>null()
  character,dimension(2,3)::a1=reshape((/'1','2','3','4','5','6'/),(/2,3/))
  end type
  contains
   elemental function ss1(x1,x2)
   character,intent(in)::x1
   character,intent(in)::x2
   character ss1
   ss1=x1//x2
   end function
   elemental function ss2(x2,x1)
   character,intent(in)::x1
   character,intent(in)::x2
   character ss2
   ss2=x2//x1
   end function
 end
 subroutine s1
 use m1
 type(w),pointer::x
!
 allocate(x)
 write(55,*) ss1(x%a1,(x%a1))
 if (any(ss1(x%a1,(x%a1))/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(55,*) ss1(x%a1(:,:),(x%a1(:,:)))
 if (any(ss1(x%a1(:,:),(x%a1(:,:)))/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(55,*) ss1(x%a1,(x%a1))
 if (any(ss1(x%a1,(x%a1))/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(55,*) ss1(x%a1(:,:),(x%a1(i3-i2,i3-i2)))
 if (any(ss1(x%a1(:,:),(x%a1(i3-i2,i3-i2)))/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(55,*) ss1(x%a1(i3-i2,i3-i2),(x%a1(:,:)))
 if (any(ss1(x%a1(i3-i2,i3-i2),(x%a1(:,:)))/=reshape((/'1','1','1','1','1','1'/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(55,*) ss2((x%a2),x%a2)
 if (any(ss2((x%a2),x%a2)/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(55,*) ss2((x%a2(:,:)),x%a2(:,:))
 if (any(ss2((x%a2(:,:)),x%a2(:,:))/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(55,*) ss2((x%a2),x%a2)
 if (any(ss2((x%a2),x%a2)/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(55,*) ss2((x%a2(:,:)),x%a2(i3-i2,i3-i2))
 if (any(ss2((x%a2(:,:)),x%a2(i3-i2,i3-i2))/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(55,*) ss2((x%a2(i3-i2,i3-i2)),x%a2(:,:))
 if (any(ss2((x%a2(i3-i2,i3-i2)),x%a2(:,:))/=reshape((/'1','1','1','1','1','1'/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
rewind 55
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=111111)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=123456)write(6,*) "NG"
read(55,*) i;if (i/=111111)write(6,*) "NG"
 end
