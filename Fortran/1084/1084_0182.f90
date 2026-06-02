PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1=0
  INTEGER(KIND=8) ::int1=0
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER:: ptr_base(:)
  INTEGER(KIND=8) :: int2=0
  REAL(KIND=8) ::real2=0
END TYPE 

type (deriv) ::obj ,obj2
type(deriv), pointer ::ptr(:) 
class(base), pointer ::ptr2(:) 
class(base), pointer ::ptr3(:) 
allocate(ptr(10))
allocate(base::ptr2(10))
ptr(1)%int2=40
allocate(obj%ptr_base, mold=ptr)
select type(bb=>ptr2)
  type is(deriv)
   print*,"801"
  type is(base)
   allocate(base::obj2%ptr_base(10))
   select type(kk=>ptr2)
    type is(deriv)
       print*,"821"
     type is(base)
      deallocate(ptr2)
      allocate(base::ptr2(10))
       kk(1)%int1=21
      allocate(ptr3(10),source=kk)
      select type(pp=>ptr3)
         type is(base)
          if(pp(1)%int1.ne.21)print*,"141"
      end select
   end select
  select type(aa=>obj%ptr_base)
  type is(deriv)
    if(any(aa%int2 /= 0)) print*,101,aa%int2
    if(any(aa%int2 == 20)) print*,142,aa%int2
     aa%int2 =12
      select type(bb=>obj2%ptr_base)
       type is(deriv)
         print*,"901"
       type is(base)
        if(any(bb%int1 /= 0)) print*,103,bb%int1
        bb%int1 =134
      end select
      if(any(aa%int2 /= 12)) print*,102,aa%int2
    print*,'pass'
  type is(base)
     print*,103
  class default
  print*,102
end select
end select
 select type(bb=>obj2%ptr_base)
       type is(deriv)
         print*,"901"
       type is(base)
        if(any(bb%int1 /= 134)) print*,132,bb%int1
 end select
END PROGRAM
