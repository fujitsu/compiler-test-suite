  call sss
  print *,'pass'
contains
  subroutine sss
  type t
     integer :: i, j
  end type t
  type(t) :: x(5)
 if(is_contiguous(x(:)).neqv..true.) print*,'err1'
 if(is_contiguous(x(:)%i).neqv..false.) print*,'err2'
 if(is_contiguous(x).neqv..true.) print*,'err3'
 if(is_contiguous(x(1:5:2)).neqv..false.) print*,'err4'
end subroutine sss

end
