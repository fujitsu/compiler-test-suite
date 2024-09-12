          integer:: a(3)=[1,2,3]
          call sub((kf(a))) 
           print*,"Pass"
          contains
           pure function kf(a2)
             integer,intent(in) :: a2(3)
              integer :: kf(3)
              kf=a2
           end function
           subroutine sub(ss)
           integer::ss(:)
            if(any(ss .ne. [1,2,3])) print*,"121"
           end subroutine
          end
