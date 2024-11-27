 call s1
 print *,'pass'
 end
 subroutine s1
 integer,allocatable,dimension(:,:,:)::a
 allocate(a(2,3,4))
 j=1
 a=reshape((/(i,i=1,24)/),(/2,3,4/))
 call sub(f(a))
 contains
  subroutine sub(a)
  character*(*),dimension(:,:,:)::a
  if (any( a/=reshape((/(char(i),i=1,24)/),(/2,3,4/))))write(6,*) "NG"
  end subroutine
  elemental function f(a)
  character*(j)::f
  integer,intent(in)::a
  f=char(a)
  end function
 end

