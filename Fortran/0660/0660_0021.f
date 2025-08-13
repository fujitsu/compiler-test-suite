      program main
       real,dimension(:),allocatable :: x,y
       integer :: i,n
       real :: s,t
       external lagrange
       write (43,*) 5
       rewind 43
       read(43,*) n
       allocate(x(n),y(n))
       write (44,*) 1.,3.
       write (45,*) 2.,4.
       write (46,*) 5.,5.
       write (47,*) 7.,2.
       write (48,*) 8.,9.
       do i=1,n
          rewind i+43
          read(i+43,*) x(i),y(i)
       end do
       write(49,*) 6.
       rewind 49
       read(49,*) t
       call lagrange(n,x,y,t,s)
       if (abs(2.380952-s)>0.000003_4) print *,'**** err : ',s
       deallocate(x,y)
       print *,'pass'
      end program main

      subroutine lagrange(n,x,y,t,s)
       integer,intent(in) ::n
       real,dimension(n),intent(in) :: x,y
       real,intent(in) :: t
       real,intent(out) :: s
       integer :: i,j
       real :: p
       s=0.0
       do  i=1,n
          p=y(i)
          do j=1,n
             if (i/=j) then
                p=p*(t-x(j))/(x(i)-x(j))
             end if
          end do
          s=s+p
       end do
      end subroutine lagrange
