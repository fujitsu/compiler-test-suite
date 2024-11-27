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
  subroutine sub(dum1,dum2,dum3)
      CLASS(ty2),TARGET::dum1(2,2,2,2,2,2)
      TYPE(ty3)::dum2(3)
      CLASS(ty1),ALLOCATABLE::dum3(:,:,:)
 
      ALLOCATE(dum3(4,4,4))
      dum3(3,3,3)%i1=3
      dum3(3,3,3)%r1=4.4
      print*,dum1(1,1,2,1,1,2)%i2
      print*,dum1(1,1,2,1,1,2)%r2
      print*,dum2%r3
  end subroutine
end module
 
 
subroutine sub1
    use m2
      CLASS(ty2),POINTER::ptr(:,:,:,:,:,:)
      TYPE(ty3)::t1(3)
      CLASS(ty1),ALLOCATABLE::ptr2(:,:,:)
 
      ALLOCATE(ty2::ptr(2,2,2,2,2,2))
      ptr(1,1,2,1,1,2)%i2=1
      ptr(1,1,2,1,1,2)%r2=2.2
      t1%r3=7.2
      call sub(ptr,t1,ptr2)
    
      print*,ptr(1,1,2,1,1,2)%i2
      print*,ptr(1,1,2,1,1,2)%r2
      print*,ptr2(3,3,3)%i1
      print*,ptr2(3,3,3)%r1

end subroutine
 
interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program
