module m1
  TYPE ty1
    integer(kind=8)::i1
    real(kind=8)::r1
  end TYPE
 
  TYPE,extends(ty1)::ty2
    integer(kind=8)::i2
    real(kind=8)::r2
  end TYPE
end module
 
module m2
 use m1
    TYPE,extends(ty2)::ty3
      integer(kind=8)::i3
      real(kind=8)::r3
    end TYPE
contains
  subroutine sub(dum,yy,dum3,dum4)
      CLASS(ty2),ALLOCATABLE::dum(:,:,:,:,:,:)
      INTEGER::yy
      CLASS(ty1),POINTER::dum3(:,:) 
      CLASS(ty3)::dum4(2,2,2)
 
      ALLOCATE(dum(3,3,3,3,3,3))
      ALLOCATE(dum3(4,4))

      dum(2,3,2,3,2,3)%i2=4
      dum3(2,3)%r1=2.5
      
      print*,"subdum(2,3,2,3,2,3)%i2", dum(2,3,2,3,2,3)%i2
      print*,"yy=", yy
      print*,"dum4(1,2,2)%r3 = ", dum4(1,2,2)%r3
  end subroutine
end module
 
 
subroutine sub1
    use m2
      CLASS(ty2),ALLOCATABLE::ptr(:,:,:,:,:,:)
      INTEGER::ii
      CLASS(ty1),POINTER::ptr2(:,:)
      TYPE(ty3),ALLOCATABLE::t1(:,:,:)

      ii=2
      ALLOCATE(t1(2,2,2))
      t1(1,2,2)%r3=6.3
      call sub(ptr,ii,ptr2,t1)
      print *,"sub1 - ptr(2,3,2,3,2,3)%i2", ptr(2,3,2,3,2,3)%i2
      print *,ptr2(2,3)%r1
      print*,"ii=", ii
      print*,"t1(1,2,2)%r3=", t1(1,2,2)%r3

end subroutine
 
interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program
