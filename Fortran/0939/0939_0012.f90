         integer:: a(3)=[11,12,13]
        integer::v(3)=[3,1,2]
        integer::aa(3)=[13,11,12]
        interface
        impure  elemental  subroutine s( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
         end subroutine
        end interface
      
         call s((a(v)) ,aa) 

         if  (any(a/=[11,12,13])) print *,101
         print *,'PASS'
        end


         impure elemental  subroutine s( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          if( x /= y)print*,201
         end subroutine
         

