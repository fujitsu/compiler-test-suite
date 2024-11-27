 character*2,allocatable,dimension(:,:,:)::a
 allocate(a(2,1,2))
 j=2
 a=reshape((/'11','22','33','44'/),(/2,1,2/))
 write(1,*)f(a),f(a)
 call sub(f(a))
 call sub(f(f(a)))
 call sub(f(f(f(a))))
 print *,'pass'
 contains
  subroutine sub(a)
  character*(*),dimension(:,:,:)::a
  if (any( a/=reshape((/'11','22','33','44'/),(/2,1,2/))))write(6,*) "NG"
  if (len(a)/=2)write(6,*) "NG"
  if (any(shape(a)/=(/2,1,2/)))write(6,*) "NG"
  end subroutine
  elemental function f(a)
  character*(j)::f
  character(*),intent(in)::a
  f=a
  end function
 end

