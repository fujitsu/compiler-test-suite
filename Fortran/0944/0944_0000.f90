          module m1
            type y
             integer::x1
            end type
            type,extends( y )::x
              integer:: a
            end type
           type z
            !class(x),pointer    ::py
           type (x),pointer    ::py
           class(y),allocatable::ay
          end type
           type(z)::n
        contains
         subroutine s1()
           type(z),save :: obj
           if (.not.same_type_as(n%ay,obj%ay)) print *,101
       
        end subroutine
        end
        use m1
        call s1()
        print *,'pass'
        end

