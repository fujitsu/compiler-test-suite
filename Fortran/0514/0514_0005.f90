      module mod
         type, abstract :: abst01
            private
         contains
            procedure(i_get_name), deferred :: get_name
         end type abst01
       
         type, abstract :: x01
            private
         contains
            procedure(i_iter_get_name), deferred :: get_name
         end type x01
       
         type, abstract :: x02
            private
         contains
            procedure(i_iter_get_name2), deferred :: get_name
         end type x02
       
           abstract interface
       
              function i_iter_get_name2(this) result(name)
                 import abst01
                 import x02
                 character(:), pointer :: name
                 class(x02), intent(in) :: this
              end function
              function i_iter_get_name(this) result(name)
                 import abst01
                 import x01
                 character(:), pointer :: name
                 class(x01), intent(in) :: this
              end function
       
              function i_get_name(this) result(name)
                 import abst01
                 character(:), pointer :: name
                 class(abst01), target, intent(in) :: this
            end function i_get_name
      
         end interface
       
        end module mod
        print *,'pass'
       end

