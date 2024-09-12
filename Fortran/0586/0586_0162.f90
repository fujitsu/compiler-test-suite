         module m1
         interface
          pure function  f(dmy)
           integer,intent(in)::dmy
          integer::f
         end function
          pure function  f2(dmy1)
           integer,intent(in)::dmy1
          integer::f2
         end function
          subroutine s(dmy2)
           integer :: dmy2
          end subroutine
           subroutine s2(dmy3)
           integer :: dmy3
          end subroutine
         end interface
        end module
       use m1
          procedure(f),pointer :: dptr1=>f2
          procedure(s),pointer :: dptr2=>s2
          dptr1=>f2
          if(associated(dptr1) .eqv. .false.)print*,"101"
          if(associated(dptr2) .eqv. .false.)print*,"103"
         
          print*,"pass"
         end

         pure function f(dmy)
          integer,intent(in) :: dmy
          integer::f
          f = 2 + dmy
         end function
         pure function f2(dmy1)
          integer,intent(in) :: dmy1
          integer::f2
          f2 =3
         end function
         subroutine s(dmy2)
           integer :: dmy2
           dmy2=dmy2+5
         end subroutine
         subroutine  s2(dmy2)
           integer :: dmy2
           dmy2=dmy2+5
         end subroutine
