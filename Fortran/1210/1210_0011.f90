     module mod
       type z
          integer(8)::z1
       end type
       type :: base
       end type base
       type, extends(base) :: ext
          integer(8)::z2(2)
          class(*),allocatable::name(:)
       end type ext
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
select type (p=>var%name)
        type is(z)
       if (p(1)    %z1/=11) print *,2828
       if (p(2)    %z1/=11) print *,2828
       if (p(3)    %z1/=11) print *,2828
       k=1
     end select
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
      var%name=[z(1),z(2),z(3)]
     end select
     k=0
     select type(var)
     type is(ext)
       var%name=[z(11),z(12),z(13)]
       if (.not.same_type_as(var%name,z(1))) print *,2921
select type (p=>var%name)
        type is(z)
       if (p(1)    %z1/=11) print *,2828
       if (p(2)    %z1/=12) print *,28281
       if (p(3)    %z1/=13) print *,2822
       k=1
     end select
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
       var%name=[z(11),z(12),z(13)]
if (.not.same_type_as(var%name,z(1))) print *,3921
select type (p=>var%name)
        type is(z)
       if (p(1)    %z1/=11) print *,2228
       if (p(2)    %z1/=12) print *,22281
       if (p(3)    %z1/=13) print *,2222
       k=1
     end select
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
select type (p=>var%name)
        type is(z)
       if (p(1)    %z1/=11) print *,2228
       if (p(2)    %z1/=11) print *,22281
       if (p(3)    %z1/=11) print *,2222
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
     print *,'sngg651r : pass'
     end program

