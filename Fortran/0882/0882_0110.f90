module m1
  TYPE ty1
    integer(kind=8)::i1
    real(kind=8)::r1
  end TYPE
 
  TYPE,extends(ty1)::ty2
    integer(kind=8)::i2
    TYPE(ty2),POINTER::ptr(:,:,:,:)
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
  subroutine sub(dum,rr)
      TYPE(ty2),POINTER::dum(:,:,:,:)
      REAL::rr

      ALLOCATE(dum(3,5,7,2))

      dum(1,2,1,1)%i2=1
      dum(1,1,2,1)%r2=2.2
      print*,"sub dum(1,2,1,1)%i2 =", dum(1,2,1,1)%i2
      print*,"sub dum(1,1,2,1)%r2 =", dum(1,1,2,1)%r2
      print*,rr
  end subroutine
end module
 
 
subroutine sub1
    use m2
      TYPE con 
        CLASS(ty2),POINTER::ptr1(:)
      END TYPE
      REAL::r
      TYPE(con)::obj
 
      ALLOCATE(obj%ptr1(5))
      r=3.5
      call sub(obj%ptr1(2)%ptr,r)
      print*,"sub1 obj%ptr1(2)%ptr(1,1,2,1)%r2", obj%ptr1(2)%ptr(1,1,2,1)%r2

end subroutine
 
interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program
