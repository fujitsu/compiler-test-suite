 call s1
 print *,'pass'
 end
 subroutine s1
 call ss1('ABC',5)
end
subroutine ss1(abc,it)
  character*(*) abc
  integer , dimension(2) :: b
  call assignment1(b , (/repeat(abc,it),repeat(abc,it)/))
  if (any(b/=3*5))write(6,*) "NG"
  call assignment2(b , (/repeat(abc,it),repeat(abc,it)/))
  if (any(b/=3*5+1))write(6,*) "NG"
  call assignment1(b(2) , repeat(repeat(abc,it),it))
  if (b(2)/=3*5*5)write(6,*) "NG"
  call assignment3(b , (/repeat(abc,it),repeat(abc,it)/),*1,1)
  write(6,*) "NG"
  1 if (any(b/=1))write(6,*) "NG"
  call assignment3(b , (/repeat(abc,it),repeat(abc,it)/),*2,0)
   if (any(b/=0))write(6,*) "NG"
   return
  2 write(6,*) "NG"
  contains
      elemental pure subroutine assignment1(arg1,arg2)
        integer , intent(out) :: arg1
        character(*) , intent(in) :: arg2
        arg1 = len(arg2)
      end subroutine
  end
      subroutine assignment2(arg1,arg2)
        integer , intent(out) :: arg1(2)
        character(*) , intent(in) :: arg2(*)
        arg1 = len(arg2)+1
      end subroutine
      subroutine assignment3(arg1,arg2,*,ik)
        integer , intent(out) :: arg1(2)
        character(*) , intent(in) :: arg2(*)
        arg1 = min(len(arg2)+1,ik)
        if (ik==1)return 1
      end subroutine
