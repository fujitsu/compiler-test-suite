type t
 class(*),allocatable     :: aaa(:)
end type t
character(:), allocatable :: bbb(:)
type(t) :: ccc
call s1(bbb)
if (any(bbb/=''))print *,'err'
print *,'pass'
contains
  subroutine s1(bbb)
    character(:), allocatable, intent(out) :: bbb(:)
    allocate(character(len=-1)::bbb(0))
    allocate(ccc%aaa(0),source='')
    
    select type(ddd => ccc%aaa)
    type is (character(*))
       bbb = ddd
    class default
       print*,"NG"
    end select
  end subroutine s1
end


