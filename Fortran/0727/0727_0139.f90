 call s1
 print *,'pass'
 end
 module m1
  integer::i2=2,i3=3
  type z
    character ::zz='x'
  end type
  type w
  type(z),pointer,dimension(:,:)::a2=>null()
  type(z),dimension(2,3)::a1=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))
  end type
  interface operator(/=)
    module procedure cc
  end interface
  contains
   elemental function ss1(x1,x2)
   type(z),intent(in)::x1
   type(z),intent(in)::x2
   type(z)::ss1
   ss1%zz=x1%zz//x2%zz
   end function
   elemental function ss2(x2,x1)
   type(z),intent(in)::x1
   type(z),intent(in)::x2
   type(z)::ss2
   ss2%zz=x2%zz//x1%zz
   end function
   elemental function cc(a1,a2)
   type(z),intent(in)::a1,a2
   logical::cc
   cc=a1%zz/=a2%zz
   end function
 end
 subroutine s1
 use m1
 type(w),pointer::x
!
 allocate(x)
 write(54,*) ss1(x%a1,(x%a1))
 if (any(ss1(x%a1,(x%a1))/=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(54,*) ss1(x%a1(:,:),(x%a1(:,:)))
 if (any(ss1(x%a1(:,:),(x%a1(:,:)))/=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(54,*) ss1(x%a1,(x%a1))
 if (any(ss1(x%a1,(x%a1))/=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))))write(6,*) "NG"
 deallocate(x)
!
 allocate(x)
 write(54,*) ss1(x%a1(i2,i3),(x%a1(i2,i3)))
 if (   (ss1(x%a1(i2,i3),(x%a1(i2,i3)))/=z('6')))write(6,*) "NG"
 deallocate(x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(54,*) ss2((x%a2),x%a2)
 if (any(ss2((x%a2),x%a2)/=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(54,*) ss2((x%a2(:,:)),x%a2(:,:))
 if (any(ss2((x%a2(:,:)),x%a2(:,:))/=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(54,*) ss2((x%a2),x%a2)
 if (any(ss2((x%a2),x%a2)/=reshape((/z('1'),z('2'),z('3'),z('4'),z('5'),z('6')/),(/2,3/))))write(6,*) "NG"
 deallocate(x%a2,x)
!
 allocate(x);if(associated(x%a2))write(6,*) "NG"
 allocate(x%a2(2,3));x%a2=x%a1
 write(54,*) ss2((x%a2(i2,i3)),x%a2(i2,i3))
 if (   (ss2((x%a2(i2,i3)),x%a2(i2,i3))/=z('6')))write(6,*) "NG"
 deallocate(x%a2,x)
 rewind 54
 read(54,*) i;if (i/=123456)write(6,*) "NG"
 read(54,*) i;if (i/=123456)write(6,*) "NG"
 read(54,*) i;if (i/=123456)write(6,*) "NG"
 read(54,*) i;if (i/=     6)write(6,*) "NG"
 read(54,*) i;if (i/=123456)write(6,*) "NG"
 read(54,*) i;if (i/=123456)write(6,*) "NG"
 read(54,*) i;if (i/=123456)write(6,*) "NG"
 read(54,*) i;if (i/=     6)write(6,*) "NG"
 end
