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
     class(base), allocatable :: var
     allocate(ext::var)
     k=0
     select type(var)
     type is(ext)
!print *,10001
       var%name=[z(11),z(12)]
!print *,11111
!if (.not.same_type_as(var%name,z(1))) print *,3921
         if (var%name(1)%z1/=11) print *,38281
         if (var%name(2)%z1/=12) print *,382812
       k=1
     end select
     if (k/=1) print *,100211
!print *,22222
end
call s3
     print *,'sngg237s : pass'
     end program

