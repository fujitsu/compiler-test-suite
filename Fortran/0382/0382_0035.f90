program main
  integer x
  interface
   subroutine foo(x)
   integer,optional,intent(inout) :: x
   end subroutine
  end interface
  x=1
  write(1,*)"x=",x
  call foo(x)
  write(1,*)"x=",x
print *,'pass'
  end

subroutine foo(x)
 integer,optional,intent(inout) :: x
 integer i
 if (present(x)) then
  !$OMP PARALLEL
  !$OMP DO REDUCTION(+:x)
  do i=1,4
      x=x+1
  enddo
  !$OMP END DO
  !$OMP END PARALLEL
  write(1,*)"foo x=",x
 else
      print *, "else"
 end if
end subroutine
