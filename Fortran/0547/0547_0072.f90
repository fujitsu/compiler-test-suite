    subroutine s1
    character(80)            :: text
    integer                  :: i
    logical:: xx(80)=.true.

    do i=1,80
      text(i:i)='x'
    end do
    n80=80
    forall (i=1:n80, xx(i))  text(i:i)=' '
    if (text/='') print *,1
    forall (i=1:n80, .not.xx(i))  text(i:i)='y'
    if (text/='') print *,2

    end
call s1
    print *,'pass'
    end
