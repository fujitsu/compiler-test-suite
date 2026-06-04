     module mod
       type z
          integer(8)::z1
       end type
     end module mod

   subroutine s1
     use mod
          class(*),allocatable::name(:)
      allocate(name(3),source=z(1))
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,292
k=0
select type(name)
  type is(z)
       if (name(1)%z1/=11) print *,1828
       if (name(2)%z1/=11) print *,2828
       if (name(3)%z1/=11) print *,3828
k=1
end select
if (k/=1) print *,10001
end
   subroutine s2
     use mod
          class(z),allocatable::name(:)
      name=[z(1),z(2),z(3)]
       name=z(11)
       if (.not.same_type_as(name,z(1))) print *,2921
k=0
select type(name)
  type is(z)
       if (name(1)%z1/=11) print *,1728
       if (name(2)%z1/=11) print *,2728
       if (name(3)%z1/=11) print *,3728
k=1
end select
if (k/=1) print *,10001
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
k=0
select type(name)
  type is(z)
       if (name(1)%z1/=11) print *,1748
       if (name(2)%z1/=11) print *,2748
       if (name(3)%z1/=11) print *,3748
k=1
end select
if (k/=1) print *,11001
end
   subroutine s5
     use mod
          class(z),allocatable::name(:)
      name=[z(1),z(2),z(3)]
       name=[z(11),z(12),z(13)]
       if (.not.same_type_as(name,z(1))) print *,2921
k=0
select type(name)
  type is(z)
       if (name(1)%z1/=11) print *,1718
       if (name(2)%z1/=12) print *,2718
       if (name(3)%z1/=13) print *,3718
k=1
end select
if (k/=1) print *,12001
end
   subroutine s6
     use mod
          class(z),allocatable::name(:)
      name=[z(1)]
       name=[z(11),z(12),z(13)]
       if (.not.same_type_as(name,z(1))) print *,2921
k=0
select type(name)
  type is(z)
       if (name(1)%z1/=11) print *,1758
       if (name(2)%z1/=12) print *,2758
       if (name(3)%z1/=13) print *,3758
k=1
end select
if (k/=1) print *,12021
end
do k=1,10
call s1
call s2
call s3
call s4
call s5
call s6
end do
     print *,'sngg659r : pass'
     end program

