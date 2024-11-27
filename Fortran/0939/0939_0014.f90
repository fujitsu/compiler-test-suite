         type ty
          integer:: a
         end type
        integer::v(3)=[3,1,2]
        integer::aa(3)=[13,11,12]
        interface
        impure  elemental  subroutine s( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
         end subroutine
        end interface
        type(ty)::obj(3)
        obj(:)%a=[11,12,13]

         call s((obj(v)%a) ,aa) 

         if  (any(obj(:)%a/=[11,12,13])) print *,101
         print *,'PASS'
        end


         impure elemental  subroutine s( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          if( x /= y)print*,201
         end subroutine
         

