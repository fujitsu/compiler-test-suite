     module mod
       type z
          integer(8)::z1
       end type
     end module mod

   subroutine s1
     use mod
          class(z),allocatable::name
      allocate(name,source=z(1))
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,292
       if (name%z1/=11) print *,2828
end
   subroutine s2
     use mod
          class(z),allocatable::name
      name=z(1)
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,2921
       if (name%z1/=11) print *,28281
end
   subroutine s3
     use mod
          class(z),allocatable::name
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,29211
       if (name%z1/=11) print *,282811
end
   subroutine s4
     use mod
          class(z),allocatable::name
       allocate(name,source=z(11))
       if (.not.same_type_as(name,z(1))) print *,292111
       if (name%z1/=11) print *,2828111
end
do k=1,10
call s1
call s2
call s3
call s4
end do
     print *,'sngg657r : pass'
     end program

