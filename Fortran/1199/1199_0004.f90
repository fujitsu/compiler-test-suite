  module mod
    type :: base
    end type base

    type, extends(base) :: ext
       character(:),allocatable::name
    end type ext

   type z
     integer(8)::d1
     class(base),allocatable::zv
   end type
  end module mod

subroutine s1
  use mod
  type (z), pointer    :: v1,v2
  allocate(v2)
  allocate(ext::v2%zv)
  select type(p=>v2%zv)
    type is(ext)
      allocate(p%name,source='22')
  end select
  allocate(v1,source=v2)
  k=0
  select type(p=>v2%zv)
    type is(ext)
      p%name='11'
  k=1
  end select
  if (k/=1) print *,1002
  select type(p=>v1%zv)
    type is(ext)
      if (p%name/='22') print *,2002
  k=1
  end select
  if (k/=1) print *,1202
end
call s1
  print *,'sngg145q : pass'
  end 

