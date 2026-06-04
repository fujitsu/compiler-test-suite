     module mod
       type z
          integer(8)::z1
       end type
     end module mod

   subroutine s1
     use mod
          class(z),allocatable::name(:)
      allocate(name(3),source=z(1))
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,292
       if (name(1)%z1/=11) print *,1828
       if (name(2)%z1/=11) print *,2828
       if (name(3)%z1/=11) print *,3828
end
   subroutine s2
     use mod
          class(z),allocatable::name(:)
      name=[z(1),z(2),z(3)]
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,2921
       if (name(1)%z1/=11) print *,18281
       if (name(2)%z1/=11) print *,28281
       if (name(3)%z1/=11) print *,38281
end
   subroutine s3
     use mod
          class(z),allocatable::name(:)
       name=[z(11)]
       if (.not.same_type_as(name,z(1))) print *,29211
       if (name(1)%z1/=11) print *,282811
end
   subroutine s4
     use mod
          class(z),allocatable::name(:)
       allocate(name(3),source=z(11))
       if (.not.same_type_as(name,z(1))) print *,292111
       if (name(1)%z1/=11) print *,2128111
       if (name(2)%z1/=11) print *,2228111
       if (name(3)%z1/=11) print *,2328111
end
   subroutine s5
     use mod
          class(z),allocatable::name(:)
      name=[z(1),z(2),z(3)]
       name=[z(11),z(12),z(13)]
       if (.not.same_type_as(name,z(1))) print *,2921
       if (name(1)%z1/=11) print *,18181
       if (name(2)%z1/=12) print *,28181
       if (name(3)%z1/=13) print *,38181
end
   subroutine s6
     use mod
          class(z),allocatable::name(:)
      name=[z(1)]
       name=[z(11),z(12),z(13)]
       if (.not.same_type_as(name,z(1))) print *,2921
       if (name(1)%z1/=11) print *,18581
       if (name(2)%z1/=12) print *,28581
       if (name(3)%z1/=13) print *,38581
end
do k=1,10
call s1
call s2
call s3
call s4
call s5
call s6
end do
     print *,'sngg658r : pass'
     end program

