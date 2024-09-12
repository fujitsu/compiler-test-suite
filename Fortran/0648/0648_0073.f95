  module mod

    integer,volatile :: m1
    integer          :: m2

    volatile :: m3

     contains

       subroutine sub(error)

         integer,intent(out) :: error

         volatile :: m1,m2,m3

         error = 0

         if (any ((/m1,m2,m3/).ne.(/1,2,3/))) then
           error = 1
         end if

       end subroutine

  end module

  program main

    use mod
    volatile :: m1,m2,m3

    integer :: error

    m1 = 1
    m2 = 2
    m3 = 3

    call sub(error)
    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    call sub2
    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

    contains 

      subroutine sub2

        volatile :: m1,m2,m3

        if (any ((/m1,m2,m3/).ne.(/1,2,3/))) then
          error = 1
        end if

      end subroutine sub2

  end program main
