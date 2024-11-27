 call s1
 print *,'pass'
 end
 subroutine s1
 character*2,allocatable,dimension(:)::a
 allocate(a(2*1*2))
 j=2
 a=reshape((/'11','22','33','44'/),(/4/))
 call sub(f(a))
 contains
  subroutine sub(a)
  character*(*),dimension(:)::a
  if (any( a/=reshape((/'11','22','33','44'/),(/2*1*2/))))write(6,*) "NG"
  end subroutine
  elemental function f(a)
  character*(j)::f
  character(*),intent(in)::a
  f=a
  end function
 end

