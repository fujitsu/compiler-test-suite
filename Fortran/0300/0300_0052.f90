  pure function func(a)
    integer, dimension(10,2), intent(in) :: a
    integer :: func,aa(10)
    integer :: s
    aa=sum(a,dim=2)
    s=0
    do i=1,10
      s = s+aa(i)
    enddo
    func = s
  end function

  subroutine sub(a,b)
  interface
    pure function func(a)
      integer, dimension(10,2), intent(in) :: a
      integer :: func
    end function
  end interface
  integer,dimension(10,2):: a
  integer,dimension(10):: b
  do i=1,10
    b(i) = func(a) 
  enddo
  end

  program main
  integer,dimension(10,2):: a
  integer,dimension(10):: b
  a=reshape((/(j,j=1,20)/),(/10,2/))
  b = 0
  call sub(a,b)
  print *,b
  end


