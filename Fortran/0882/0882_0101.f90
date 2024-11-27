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
  subroutine sub(dum,yy,dum2)
      TYPE(ty2)::dum(5,*)
      INTEGER::yy(3)
      TYPE(ty1)::dum2(5,5)
     
      print*,"sub dum(2,1)%i2 =",dum(2,1)%i2
      print*,dum(2,1)%r2
      print*,dum2(3,3)%i1
      print*,dum2(3,3)%r1
      print*,yy          
  end subroutine   
end module

subroutine sub1
    use m2
      CLASS(ty2),POINTER::ptr(:,:)
      INTEGER::ii(3)
      CLASS(ty1),ALLOCATABLE::ptr2(:,:)
      INTEGER,dimension(6)::V1,V2
      V1=(/2,3,4,1,2,4/)
      V2=(/2,3,4,1,2,4/)
       
      ALLOCATE(ty2::ptr(6,6))
      ALLOCATE(ty1::ptr2(5,5))

      ptr(3,2)%i2=1
      ptr(3,2)%r2=2.2

      ptr2(3,3)%i1=3
      ptr2(3,3)%r1=4.4
      ii=7
      print *,"sub1 ptr(3, 2)%i2 =",ptr(3, 2)%i2
      call sub(ptr(V1,V2),ii,ptr2)

end subroutine   

interface 
  subroutine sub1
    use m2
  end subroutine
end interface
call sub1
print*,'pass'
end program


