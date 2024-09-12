         interface
          pure function  f(dmy)
           integer,intent(in)::dmy
           integer::f
         end function
          function  f2(dmy1)
           integer,intent(in)::dmy1
           integer::f2
         end function
          subroutine s(dmy2)
           integer :: dmy2
          end subroutine
         end interface
          procedure(f2),pointer :: dptr1=>f
          procedure(s),pointer :: dptr2=>s
          integer :: ii = 5
          integer :: jj = 10
          dptr1=>f
          dptr2=>s
          if(associated(dptr1) .eqv. .false.)print*,"101"
          if(dptr1(ii) .ne. 2)  print*,"102",f(ii)
          if(associated(dptr2) .eqv. .false.)print*,"103"
          call dptr2(jj)
          if(jj .ne. 15)print*,"104"
          print*,"pass"
         end
        pure function  f(dmy1)
           integer,intent(in)::dmy1
           integer::f
           f =2
         end function
        function  f2(dmy1)
           integer,intent(in)::dmy1
           integer::f2
           f2 =3
         end function
          subroutine s(dmy2)
           integer :: dmy2
            dmy2 = 15
          end subroutine
