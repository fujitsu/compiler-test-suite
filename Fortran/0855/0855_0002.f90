 type t
    class(*),allocatable:: aaa(:)
 end type t
 character(:), allocatable :: bbb(:)
 character(:), allocatable :: ccc(:)
 type(t),allocatable :: ddd
 ccc=s1(bbb)
 if (any(ccc/='1'))print *,101
print *,'pass'
contains
  function  s1(bbb) result(zzz)
    character(:), allocatable , intent(out) :: bbb(:)
    character(:),allocatable::zzz(:)
    allocate(character(len=1)::bbb(3))
    allocate(ddd)
    allocate(ddd%aaa(3),source='1')
    select type(eee => ddd%aaa)
    type is (character(*))
       bbb = eee
       zzz=bbb
    end select
  end function s1
end


