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
  subroutine sub(dum1,dum2)
      CLASS(ty2)::dum1(3,3)
      REAL::dum2
 
      print*,'sub dum1(1,1)%r2=',dum1(1,1)%r2
      print*,dum2
  end subroutine
end module
 
subroutine sub1
    use m2
      TYPE con
         CLASS(ty2),ALLOCATABLE::ptr(:,:)
      END TYPE
      TYPE(con)::obj
      REAL::r
 
      ALLOCATE(obj%ptr(10,10))
      obj%ptr(3,5)%r2=4.7
      r=8.9
      print*,'sub1 obj%ptr(3,5)%r2=',obj%ptr(3,5)%r2
      print*,r

      call sub(obj%ptr(3:10:3,5:10:2),r)
 
end subroutine
 
interface
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program
