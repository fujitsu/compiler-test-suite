  type t
     class(*),allocatable     :: aaa
  end type t
  character(:), allocatable :: bbb(:)
  type(t) :: ccc
  print *,s1(bbb)
  
    if (any(bbb/='123'))print *,101
contains
 function s1(bbb) result(jjj)
   character(:), allocatable, intent(out) :: bbb(:)
   character(:),allocatable::jjj
   allocate(character(len=3)::bbb(3))
   allocate(ccc%aaa,source='123')
   select type(ddd => ccc%aaa)
   type is (character(*))
      bbb = ddd
   class default
      print*,"NG"
   end select
   jjj="pass"
 end function s1
end


