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
      CLASS(ty2),POINTER::dum1(:,:,:,:,:,:)
      CLASS(ty3)::dum2(5)
      TYPE(ty1)::dum3(2,3,*)

      ALLOCATE(ty2::dum1(2,2,2,2,2,2))
      dum1(1,1,2,1,1,2)%i2=1
      dum1(1,1,2,1,1,2)%r2=2.2
      print*,dum1(1,1,2,1,1,2)%i2
      print*,dum1(1,1,2,1,1,2)%r2
      print*,'sub dum3(2,2,1)%i1=',dum3(2,2,1)%i1
      print*,'sub dum3(2,2,1)%r1=',dum3(2,2,1)%r1
      print*,dum2(3)%r3
  end subroutine
end module

subroutine sub1
    use m2
      CLASS(ty2),POINTER::ptr(:,:,:,:,:,:)
      TYPE(ty3)::t1(5)
      CLASS(ty1),ALLOCATABLE::ptr2(:,:,:)

      ALLOCATE(ptr2(5,5,5))
      ptr2(4,1,1)%i1=3
      ptr2(4,1,1)%r1=4.4
      t1(1:5)%r3=7.2

      call sub(ptr,t1(1:5),ptr2)
      print*,'sub1 ptr2(4,1,1)%i1=',ptr2(4,1,1)%i1
      print*,'sub1 ptr2(4,1,1)%r1=',ptr2(4,1,1)%r1
      print*,ptr(1,1,2,1,1,2)%i2
      print*,ptr(1,1,2,1,1,2)%r2

end subroutine

interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program
