 call s1
 print *,'pass'
 end
 subroutine s1
 integer ,allocatable,dimension(:)::a1
  type x
 integer ::am(3,4,5,2)=reshape((/(i,i=1,120)/),(/3,4,5,2/))
  end type
  type(x),pointer::w
!
 allocate (a1(2),w)
 if (any(w%am/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
!
end
 
