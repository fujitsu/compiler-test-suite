     module mod
       type z
          integer(8)::z1
       end type
       type :: base
       end type base
       type, extends(base) :: ext
          integer(8)::z2(2)
          class(*),allocatable::name
       end type ext
     end module mod

   subroutine s1
     use mod
     class(base), allocatable :: var(:)
     allocate(ext::var(2))
     select type(var)
     type is(ext)
      allocate(var(2)%name,source=z(1))
     end select
     k=0
     select type(var)
     type is(ext)
       var(2)%name=z(11)
       if (.not.same_type_as(var(2)%name,z(1))) print *,292
  select type (p=>var(2)%name)
        type is(z)
       if (p          %z1/=11) print *,2828
       k=1
     end select
     end select
     if (k/=1) print *,1002
end
   subroutine s2
     use mod
     class(base), allocatable :: var(:)
     allocate(ext::var(2))
     select type(var)
     type is(ext)
      var(2)%name=z(1)
     end select
     k=0
     select type(var)
     type is(ext)
       var(2)%name=z(11)
       if (.not.same_type_as(var(2)%name,z(1))) print *,2921
  select type (p=>var(2)%name)
        type is(z)
       if (p          %z1/=11) print *,28281
       k=1
     end select
     end select
     if (k/=1) print *,10021
end
   subroutine s3
     use mod
     class(base), allocatable :: var(:)
     allocate(ext::var(2))
     k=0
     select type(var)
     type is(ext)
       var(2)%name=z(11)
       if (.not.same_type_as(var(2)%name,z(1))) print *,29211
  select type (p=>var(2)%name)
        type is(z)
       if (p          %z1/=11) print *,282811
       k=1
     end select
     end select
     if (k/=1) print *,100211
end
   subroutine s4
     use mod
     class(base), allocatable :: var(:)
     allocate(ext::var(2))
     k=0
     select type(var)
     type is(ext)
       allocate(var(2)%name,source=z(11))
       if (.not.same_type_as(var(2)%name,z(1))) print *,292111
  select type (p=>var(2)%name)
        type is(z)
       if (p          %z1/=11) print *,2828111
       k=1
     end select
     end select
     if (k/=1) print *,1002111
end
do k=1,10
call s1
call s2
call s3
call s4
end do
     print *,'sngg655r : pass'
     end program

