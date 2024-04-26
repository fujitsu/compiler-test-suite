       logical,parameter:: T = .true.
       logical,parameter:: F = .false.
       logical(kind=8),dimension(10) :: a8
       logical(kind=8),dimension(10,10) :: b8
       logical(kind=1),dimension(10) :: x8 = (/F,F,F,F,F,F,F,F,F,F/)
       logical(kind=1),dimension(10,10) :: y8
       data y8/ F,T,T,T,T,T,T,T,T,T, &
                                 &              F,F,T,T,T,T,T,T,T,T, &
                                 &              F,F,F,T,T,T,T,T,T,T, &
                                 &              F,F,F,F,T,T,T,T,T,T, &
                                 &              F,F,F,F,F,T,T,T,T,T, &
                                 &              F,F,F,F,F,F,T,T,T,T, &
                                 &              F,F,F,F,F,F,F,T,T,T, &
                                 &              F,F,F,F,F,F,F,F,T,T, &
                                 &              F,F,F,F,F,F,F,F,F,T, &
                                 &              F,F,F,F,F,F,F,F,F,F /
       do j=1,10
         do i=1,10
           a8(i) = i .gt. j
           b8(i,j) = a8(i) .and. .true.
         enddo
       enddo

       if (all(a8.eqv.x8) .and. all(b8.eqv.y8)) then
       print *, "OK"
       else
       print*, a8
       print*, b8
       endif
       end
