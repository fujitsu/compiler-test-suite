  
program main
  implicit none
  interface
     recursive function   test(i, ch) result(res)
       integer, allocatable, dimension (:,:)  :: i
       character(*),target :: ch
       real res
     end function test
  end interface
  integer, allocatable, dimension (:,:)  :: i
  real x
  allocate( i(2,3) )
  i = 1
  x = test(i, "ABC")
  if (x .ne. 6) then
    print *, 'NG 4',x
  endif
end program
!
!
!
  function sub(f, ch) result(res)
  implicit none
  real res,f
  character(*) :: ch
    res = f(ch)
  end function sub
