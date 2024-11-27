        type ty
         integer:: a(3)=[11,12,13]
        end type
        integer::v(3)=[3,1,2]
        type(ty)::obj
        integer::aa(3)=[13,11,12]
        interface
         elemental  subroutine s( x,y)
          integer,asynchronous,intent(out)::x
          integer,intent(in)::y
         end subroutine
        end interface
         call s( obj%a(v) ,aa)
         if (any(obj%a/=[21,22,23])) print *,101
         print *,'PASS'
        end


         elemental  subroutine s( x,y)
          integer,asynchronous,intent(out)::x
          integer,intent(in)::y
          x=10+y
         end subroutine
         

