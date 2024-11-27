
  interface
    subroutine xxx(i)
      integer,dimension(:):: i
    end subroutine
  end interface

  integer i(10)
  call xxx(i)
  end

  subroutine xxx(a)
    integer,dimension(:,:):: a
a=a
  end
