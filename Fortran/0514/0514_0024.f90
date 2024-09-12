        type, abstract :: abst01
         contains
            procedure(i_iter_get_name), deferred,nopass:: int
         end type abst01
         type, abstract :: x01
         contains
            procedure(i_iter_get_name), deferred,nopass:: int
         end type x01

         interface
            function i_iter_get_name(this) result(name)
            end function i_iter_get_name
         end interface
integer   :: int
       print *,'pass'
       end

