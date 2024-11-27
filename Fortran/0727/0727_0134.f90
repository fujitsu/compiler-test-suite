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
   elemental subroutine ss1(x1,x2)
   complex(16),intent(out)::x1
   complex(16),intent(in)::x2
   x1=2
   x1=x1+x2
   end subroutine
   elemental subroutine ss2(x2,x1)
   complex(16),intent(out)::x1
   complex(16),intent(in)::x2
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
 if (any(abs(x%a1-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/)+2,(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 call ss1(x%a1(:,:),(x%a1(:,:)))
 if (any(abs(x%a1-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/)+2,(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 call ss1(x%a1,+x%a1)
 if (any(abs(x%a1-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/)+2,(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 call ss1(x%a1(i2,i3),(x%a1(i2,i3)))
 if (any(abs(x%a1-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)+2/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2((x%a2),x%a2)
 if (any(abs(x%a2-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/)+2,(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2((x%a2(:,:)),x%a2(:,:))
 if (any(abs(x%a2-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/)+2,(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2(+x%a2,x%a2)
 if (any(abs(x%a2-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/)+2,(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 call ss2((x%a2(i2,i3)),x%a2(i2,i3))
 if (any(abs(x%a2-reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)+2/),(/2,3/)))>0.00001))write(6,*) "NG"
 deallocate(x%a2,x)
 end
 
