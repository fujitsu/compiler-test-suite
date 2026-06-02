module mod1

  type ty
     integer::test_var=0
   contains
     final::des1
  end type ty

  type,extends(ty)::ty1
     integer::int_ty1
  end type ty1

  type,extends(ty)::ty2
     integer::int_ty2
  end type ty2

  integer::counter=0

contains
  subroutine des1(dmy)
    type(ty)::dmy
    if(dmy%test_var==2) then
       counter=counter+2
    else if(dmy%test_var==3) then
       counter=counter+3
    else if(dmy%test_var==4) then
       counter=counter+4
    else
       counter=counter+0
    end if
  end subroutine des1
end module mod1

program main
  use mod1
  implicit none
  integer :: k,x,l
  class(ty1),allocatable,target::obj1
  class(ty2),allocatable,target::obj2
  class(ty),pointer :: o1,o2
  x=0
  k=10
  l=30
  allocate(ty1::obj1)
  allocate(ty2::obj2)
  o1=>obj1
  o2=>obj2

  do concurrent(k=1:5:2,k>2)
     do concurrent (l=2:4,extends_type_of(obj1,o1))
        select type (o => o1)
           class is(ty1)
           x=x+1
           o%int_ty1=l
        type is(ty2)
           x=x+2
           o%int_ty2=l
        end select
        select type(o => o2)
           class is(ty2)
           o%int_ty2=k
           x=x+2
        end select
     end do
  end do
  if (x /= 18 .or. k/=10 .or. l/=30) then
     print *,'fail ',x
  end if
  print *,'sngp018 : pass'
end program main
