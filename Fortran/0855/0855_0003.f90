class(*),allocatable::aaa(:)
character(:), allocatable::bbb(:)
call s1(bbb)
if (any(bbb/='1'))print *,'err'
print *,'pass'
contains
  subroutine s1(bbb)
    character(:), allocatable:: bbb(:)
    allocate(character(len=1)::bbb(1))
    allocate(aaa(1),source='1')
    select type(ccc => aaa)
    type is (character(*))
       bbb = ccc
    class default
       print*,"NG"
    end select
  end subroutine s1
end program


