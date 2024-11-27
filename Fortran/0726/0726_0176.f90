 call s1
 print *,'pass'
 end
  module m1
    interface assignment(=)
      module procedure y
    end interface
    type x
     integer,dimension(3,2)::xx
    end type
    contains
   pure subroutine y(a1,a2)
    integer,intent(out),dimension(:)::a1
    type(x),intent(in)::a2
    a1=(/a2%xx/)
   end subroutine
 end
 subroutine s1
  use m1
  integer,dimension(6,4)::a1
  type(x):: a2(4)
  a2(1)%xx=reshape((/(i,i=1,6)/),(/3,2/))
  a2(2)%xx=reshape((/(i,i=7,12)/),(/3,2/))
  a2(3)%xx=reshape((/(i,i=13,18)/),(/3,2/))
  a2(4)%xx=reshape((/(i,i=19,24)/),(/3,2/))
  forall (i=1:4)
    a1(:,i)= a2(i)
  end forall
  if (any((/a1/)/=(/(i,i=1,24)/)))write(6,*) "NG"
  end
