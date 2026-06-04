     module mod
       type :: base
          character(:),allocatable::name
       end type base

       type, extends(base) :: ext
          integer(8)::d1
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var(:)
     type (ext ) :: v(2)=ext(NULL(),1)
     var=v
     if (size(var)/=2)print *,9101
k=0
select type(var)
   type is(ext)
k=1
     if (allocated(var(2)%name))print *,9001
end select
if (k/=1) print *,823
     end
     do n=1,10
      call s1
     end do
     print *,'sngg866q : pass'
     end
