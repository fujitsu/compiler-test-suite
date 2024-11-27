 call s1
 print *,'pass'
 end
 module m1
  integer::i2=2,i3=3
  type w
  complex(16),pointer,dimension(:,:)::a2=>null()
  complex(16),dimension(2,3)::a1=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/))
  end type
  contains
   elemental function ss1(x1,x2)
   complex(16),intent(in)::x1
   complex(16),intent(in)::x2
   complex(16)::ss1
   ss1=x1+x2-x1
   end function
   elemental function ss2(x2,x1)
   complex(16),intent(in)::x1
   complex(16),intent(in)::x2
   complex(16)::ss2
   ss2=x1+x2-x1
   end function
 end
 subroutine s1
 use m1
 type(w),pointer::x
 complex (16)::e1,e2,e3,e4,e5,e6
!
 allocate(x)
 write(3,*) ss1(x%a1,(x%a1))
 if (any(abs(ss1(x%a1,(x%a1))-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(3,*) ss1(x%a1(:,:),(x%a1(:,:)))
 if (any(abs(ss1(x%a1(:,:),(x%a1(:,:)))-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(3,*) ss1(x%a1,+x%a1)
 if (any(abs(ss1(x%a1,+x%a1)-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(3,*) ss1(x%a1(i2,i3),(x%a1(i2,i3)))
 if (   (abs(ss1(x%a1(i2,i3),(x%a1(i2,i3)))-(6,6))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(3,*) ss2((x%a2),x%a2)
 if (any(abs(ss2((x%a2),x%a2)-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(3,*) ss2((x%a2(:,:)),x%a2(:,:))
 if (any(abs(ss2((x%a2(:,:)),x%a2(:,:))-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(3,*) ss2(+x%a2,x%a2)
 if (any(abs(ss2(+x%a2,x%a2)-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(3,*) ss2((x%a2(i2,i3)),x%a2(i2,i3))
 if (   (abs(ss2((x%a2(i2,i3)),x%a2(i2,i3))-(6,6))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
 rewind 3
 read(3,*)e1,e2,e3,e4,e5,e6;if (any(abs((/e1,e2,e3,e4,e5,e6/)-(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1,e2,e3,e4,e5,e6;if (any(abs((/e1,e2,e3,e4,e5,e6/)-(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1,e2,e3,e4,e5,e6;if (any(abs((/e1,e2,e3,e4,e5,e6/)-(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1;if (any(abs((/e1/)-(/(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1,e2,e3,e4,e5,e6;if (any(abs((/e1,e2,e3,e4,e5,e6/)-(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1,e2,e3,e4,e5,e6;if (any(abs((/e1,e2,e3,e4,e5,e6/)-(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1,e2,e3,e4,e5,e6;if (any(abs((/e1,e2,e3,e4,e5,e6/)-(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/))>0.000001))write(6,*) "NG"
 read(3,*)e1;if (any(abs((/e1/)-(/(6,6)/))>0.000001))write(6,*) "NG"
 end
 
