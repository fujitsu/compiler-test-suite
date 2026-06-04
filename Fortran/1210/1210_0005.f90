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
     type(z),parameter::zv1(3)=[z( 1),z( 2),z( 3)]
     type(z),parameter::zv2(3)=[z(11),z(12),z(13)]
     end module mod

   subroutine s1
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     select type(var)
     type is(ext)
      allocate(var%name(3),source=z(1))
     end select
     k=0
     select type(var)
     type is(ext)
       var%name=z(11)
       if (.not.same_type_as(var%name,z(1))) print *,292
       if (var%name(1)%z1/=11) print *,2828
       if (var%name(2)%z1/=11) print *,28289
       if (var%name(3)%z1/=11) print *,28288
       k=1
     end select
     if (k/=1) print *,1002
end
   subroutine s2
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     select type(var)
     type is(ext)
      var%name=zv1
     end select
     k=0
     select type(var)
     type is(ext)
       var%name=zv2
       if (.not.same_type_as(var%name,z(1))) print *,2921
       if (var%name(1)%z1/=11) print *,28281
       if (var%name(2)%z1/=12) print *,282812
       if (var%name(3)%z1/=13) print *,282813
       k=1
     end select
     if (k/=1) print *,10021
end
   subroutine s3
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     k=0
     select type(var)
     type is(ext)
       var%name=zv2
if (.not.same_type_as(var%name,z(1))) print *,3921
         if (var%name(1)%z1/=11) print *,38281
         if (var%name(2)%z1/=12) print *,382812
         if (var%name(3)%z1/=13) print *,382813
       k=1
     end select
     if (k/=1) print *,100211
end
   subroutine s4
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     k=0
     select type(var)
     type is(ext)
       allocate(var%name(3),source=z(11))
       if (.not.same_type_as(var%name,z(1))) print *,292111
         if (var%name(1)%z1/=11) print *,48281
         if (var%name(2)%z1/=11) print *,482812
         if (var%name(3)%z1/=11) print *,482813
       k=1
     end select
     if (k/=1) print *,1002111
end
do k=1,10
call s1
call s2
call s3
call s4
end do
     print *,'sngg645r : pass'
     end program

