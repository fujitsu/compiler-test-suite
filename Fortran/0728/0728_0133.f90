 call s1
 print *,'pass'
 end
subroutine s1
 interface assignment(=)
      elemental pure subroutine assignment(arg1,arg2)
        integer , intent(out) :: arg1
        character(*) , intent(in) :: arg2
      end subroutine
  end interface

  integer , dimension(500) :: b
  b = (/("ABC",i=1,500)/)
  if (any(b/=3))write(6,*) "NG"
  end
      elemental pure subroutine assignment(arg1,arg2)
        integer , intent(out) :: arg1
        character(*) , intent(in) :: arg2
        arg1 = len(arg2)
      end subroutine
