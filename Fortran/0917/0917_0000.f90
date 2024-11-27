         interface
          function  f(dmy)
           integer,intent(in)::dmy
           integer::f
         end function
          function  f2(dmy1)
           integer,intent(in)::dmy1
           integer::f2
         end function
         end interface
          procedure(f2),pointer :: dptr1=>f
          procedure(f),pointer :: dptr2=>f2
           if(associated(dptr1).neqv..true.)print*,"101"
           if(associated(dptr2).neqv..true.)print*,"102"
           print*,"PASS"
         end
          function  f(dmy)
           integer,intent(in)::dmy
           integer::f
          f=dmy
         end function
          function  f2(dmy1)
           integer,intent(in)::dmy1
           integer::f2
          f2=dmy1
         end function
