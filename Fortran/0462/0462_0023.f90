module mod_pt

  contains

  subroutine init
    implicit none
    integer :: n, i
    integer ::  var(2048)
    integer ::  var2(2048)
    integer ::  var3(2048)
    common /cmn_base/ ptr
    pointer (ptr, var2)
    pointer (ptr, var)
    pointer (ptr, var3)

    n=2048
    ptr = malloc(n*4)

    do i=1, n
      var(i)= i
    enddo

    write(1,*) var(2048)
    write(1,*)var2(2048)
    write(1,*) var3(2048)

  end subroutine init
end module mod_pt

program crayptr
  use mod_pt
    integer ::  var(2048)
    pointer (ptr, var2)
    pointer (ptr, var3)
    integer ::  var2(2048)
    integer ::  var3(2048)
    common /cmn_base/ ptr
    pointer (ptr, var)
  call init
    write(1,*) var(2048)
    write(1,*)var2(2048)
    write(1,*) var3(2048)

  call free(ptr) 
rewind 1
read(1,*) k;if (k/=2048) print *,301
read(1,*) k;if (k/=2048) print *,301
read(1,*) k;if (k/=2048) print *,301
read(1,*) k;if (k/=2048) print *,301
read(1,*) k;if (k/=2048) print *,301
read(1,*) k;if (k/=2048) print *,301
print *,'pass'
end program crayptr
