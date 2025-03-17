module mod
  type z
    integer(4),allocatable::za(:)
  endtype
end module
module modf
 use mod
  interface
    function fun(a) result(j)
      use mod
      type(z)::a
      integer,allocatable::j(:)
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
    do while ( any( fun( z((/i,i+1,i+2/)) ) /= (/5,6,7/) ) )
      i=i+1
    enddo
    if (i/=5) write(6,*) "NG"
    i=1
    do while ( any( fun( z((/i,i+1,i+2/)) ) /= (/5,6,7/) ) )
      i=i+1
    enddo
    if (i/=5) write(6,*) "NG"
    i=1
    do while ( .not. any( fun( z((/i,i+1,i+2/)) ) /= (/5,6,7/) ) )
      i=i+1
    enddo
    if (i/=1) write(6,*) "NG"
  end

  function fun(a) result(j)
   use mod
    type(z)::a
    integer,allocatable::j(:)
    allocate(j(size(a%za)))
    if ( size(a%za)/=3 ) write(6,*) "NG"
    j(1) = a%za(1)
    j(2) = a%za(2)
    j(3) = a%za(3)
  end function
