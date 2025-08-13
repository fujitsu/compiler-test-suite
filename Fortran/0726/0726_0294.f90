 call s1
 print *,'pass'
 end
 module Y
  integer::k=0
 end
 module X
  use Y
  contains
    subroutine f
         write(72,*) 'this is f'
         k=k+1
    end subroutine f
end module

subroutine s1
  use Y
 call ss1
 call ss2
 call ss3
 if (k/=105)write(6,*) "NG"
end
subroutine ss1
  use X, g => f
  use X, f => f
  implicit none
  call f
  call g
end
subroutine ss2
  use X, g => f
  use X
  implicit none
  call f
  call g
end
subroutine ss3
  use X, g => f
  use X,only:f
  implicit none
  call f
  call g
end
 subroutine f
  use Y
 k=k+100
 end
