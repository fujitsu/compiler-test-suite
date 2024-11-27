module m1
  TYPE ty1
    integer(kind=8)::i1
    real(kind=8)::r1
  end TYPE
 
  TYPE,extends(ty1)::ty2
    integer(kind=8)::i2
    CLASS(ty2),POINTER::ptr(:,:,:,:)
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
  subroutine sub(dum,yy)
      CLASS(ty2),TARGET::dum(3,5,7,2)
      INTEGER::yy(3)
      print*, " sub  dum(1,1,2,1)%r2 =", dum(1,1,2,1)%r2
      print*, " sub  dum(1,2,1,1)%i2 =", dum(1,2,1,1)%i2
      print*,yy
  end subroutine
end module
 
 
subroutine sub1
    use m2
      TYPE con 
        CLASS(ty2),POINTER::ptr1(:)
      END TYPE
      INTEGER::ii(3)
      TYPE(con)::obj
 
      ALLOCATE(obj%ptr1(5))
      ALLOCATE(obj%ptr1(2)%ptr(3,5,7,2))
 
      obj%ptr1(2)%ptr(1,2,1,1)%i2=1
      obj%ptr1(2)%ptr(1,1,2,1)%r2=2.2
      ii=7
      print*, "sub1 obj%ptr1(2)%ptr(1,1,2,1)%r2 = ", obj%ptr1(2)%ptr(1,1,2,1)%r2
      print*, "sub1 obj%ptr1(2)%ptr(1,2,1,1)%i2 = ", obj%ptr1(2)%ptr(1,2,1,1)%i2
      print *, ii
      call sub(obj%ptr1(2)%ptr,ii)

end subroutine
 
interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program
