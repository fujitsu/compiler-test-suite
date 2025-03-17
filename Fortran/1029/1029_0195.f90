module mod
  type z
    integer(4),allocatable::za(:)
  endtype
  type y
    type(z),allocatable::yy(:)
  end type
end module
module modf
 use mod
  interface
    function fun(a) result(j)
      use mod
      type(y)::a
      integer,allocatable::j(:,:)
    end function
  end interface
end module

  program abc
    call sub()
    print *,'pass'
  end program

  subroutine sub()
    use mod
    use modf
    i=0
    do while ( &
       any( &
           reshape(fun(y((/z((/(m,m=i,i+1)/)),z((/(m,m=i+2,i+3)/))/))),(/2,2/))&
           /= &
           reshape((/5,6,7,8/)                                        ,(/2,2/))&
           ) )
      i=i+1
    enddo
    if (i/=5) write(6,*) "NG"

    i=0
    do while ( &
       any( &
           reshape(fun(y((/z((/(m,m=i,i+1)/)),z((/(m,m=i,i+1)/))/))),(/1,4/) ) &
           /= &
           reshape(fun(a=y((/(z((/(m,m=7,8)/)),k=1,2)/)))          ,(/1,4/) ) &
          ) )
      i=i+1
    enddo
    if (i/=7) write(6,*) "NG"
  end

  function fun(a) result(j)
   use mod
    type(y)::a
    integer,allocatable::j(:,:)
    allocate(j(2,2))
    j(1,1) = a%yy(1)%za(1)
    j(2,1) = a%yy(1)%za(2)
    j(1,2) = a%yy(2)%za(1)
    j(2,2) = a%yy(2)%za(2)
  end function
