     module mod
       type z
          integer(8)::z1
       end type
       type :: base
       end type base
       type, extends(base) :: ext
          integer(8)::z2(2)
          class(z),allocatable::name
       end type ext
     end module mod

   subroutine s1
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     select type(var)
     type is(ext)
      allocate(var%name,source=z(1))
     end select
     k=0
     select type(var)
     type is(ext)
       var%name=z(11)
       if (.not.same_type_as(var%name,z(1))) print *,292
       if (var%name%z1/=11) print *,2828
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
      var%name=z(1)
     end select
     k=0
     select type(var)
     type is(ext)
       var%name=z(11)
       if (.not.same_type_as(var%name,z(1))) print *,2921
       if (var%name%z1/=11) print *,28281
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
       var%name=z(11)
       if (.not.same_type_as(var%name,z(1))) print *,29211
       if (var%name%z1/=11) print *,282811
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
       allocate(var%name,source=z(11))
       if (.not.same_type_as(var%name,z(1))) print *,292111
       if (var%name%z1/=11) print *,2828111
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
     print *,'sngg641r : pass'
     end program

