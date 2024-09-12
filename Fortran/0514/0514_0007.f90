         type, abstract :: abst01
         contains
            procedure(i_iter_get_name), deferred,nopass:: get_name
         end type abst01

         interface
            function i_iter_get_name(this) result(name)
            end function i_iter_get_name
         end interface
block
         type, abstract :: x01
         contains
            procedure(i_iter_get_name), deferred,nopass:: get_name
         end type x01
end block

       print *,'pass'
       end

