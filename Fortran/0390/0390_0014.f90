module m1
contains
 pure function my_getstr(i)
 character(len=5):: my_getstr
 intent(in)::i
 my_getstr='x'
 if (mod(i,2000)==0)my_getstr="hello"
 end function
 pure integer function warp(c1,c2)
 character*(*),intent(in):: c1,c2
 warp=0
 if (c1==c2)warp=1
 end function
end
use m1
     character (len=5) :: str,o
     logical :: stopping = .false.
     integer counter
     str = "hello"
call omp_set_num_threads(1)


!$OMP PARALLEL shared(stopping)
	stopping=.false.
!$OMP DO PRIVATE(o,counter)
     do counter = 1, 10000
!$OMP critical
 	if (.not. stopping) then
           o = my_getstr(counter)
           if ( warp(str,o) .EQ. 1) then
                write(8,*)"Ok, counter = ", counter, "and o = ", o
                print *,'pass'
                stopping=.true.
           end if
	end if
!$OMP end critical
     end do
!$OMP end do
!$OMP end parallel
end
