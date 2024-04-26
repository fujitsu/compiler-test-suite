program main
  logical(kind=4),dimension(64) :: dest,a,b
  call init(dest,a,b)
  do i=1,2
     call test(dest,a,b)
  enddo
  do i=1,64/2
     if(a(i) .neqv. dest(i)) then
        print *, "NG"
     endif
  enddo
  do i=64/2+1,64
     if(b(i) .neqv. dest(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b)
  logical(kind=4),dimension(1:64) :: dest,a,b

  do i=1,64/2
     dest(i) = .FALSE.
     a(i) = .TRUE.
     b(i) = .FALSE.
  enddo

  do i=64/2+1,64
     dest(i) = .FALSE.
     a(i) = .TRUE.
     b(i) = .TRUE.
  enddo
end subroutine init


subroutine test(dest,a,b)
  logical(kind=4), dimension(64) :: dest,a,b

  do i=1,64
     if(a(i) .neqv. b(i)) then
       dest(i) = a(i)		
     else			
       dest(i) = b(i)	
     endif
  enddo
end subroutine test
