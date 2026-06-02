     module mod
       type z
          integer(8)::z1
       end type
       type :: base
       end type base
       type, extends(base) :: ext
          integer(8)::z2(2)
          class(z),allocatable::name(:)
       end type ext
     end module mod

   subroutine s3
     use mod
          class(z),allocatable::name(:)
       name=[z(11),z(12)]
!print *,11111
!if (.not.same_type_as(name,z(1))) print *,3921
         if (name(1)%z1/=11) print *,38281
         if (name(2)%z1/=12) print *,382812
!print *,22222
end
call s3
     print *,'sngg238s : pass'
     end program

