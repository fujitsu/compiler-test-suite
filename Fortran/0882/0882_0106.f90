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
  subroutine sub(dum,yy)
      CLASS(ty2),POINTER::dum(:,:,:,:,:,:)
      INTEGER::yy(3)
 
      ALLOCATE(dum(2,2,2,2,2,2))
      dum(1,1,2,1,2,2)%i2=4
      print*, "sub dum(1,1,2,1,2,2)%i2 =", dum(1,1,2,1,2,2)%i2
      print*,yy
  end subroutine
end module
 
 
subroutine sub1
    use m2
      TYPE con
         CLASS(ty2),POINTER::ptr(:,:,:,:,:,:)
      END TYPE
      TYPE(con)::obj
      INTEGER::ii(3)
 
      ii=3
      call sub(obj%ptr,ii)
      print*,"sub-1 obj%ptr(1,1,2,1,2,2)%i2 = ", obj%ptr(1,1,2,1,2,2)%i2
      print*,ii
 
end subroutine
 
interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program