         class(*),pointer :: x
         class(*),pointer :: y
         class(*),pointer :: r
         logical::l
         allocate(x,source=1)
         allocate(y,source=1)
         allocate(r,source=12.2)
         x => y
         if (same_type_as(x, y))then
            l = .true.
         end if
         if(.not.l) print *,'err1'
         select type(z=>x)
          type is (integer)
            l=.false.
            if (same_type_as(x, y))then
              l = .true.
            end if
            if(.not.l) print *,'err2'
            x=>r
          class default
           print *,'ng'
         end select
         select type(z=>x)
          type is (integer)
             print*,"103"
          type is (real)
             if(z.ne.12.2)print*,"104"
         end select
         print *,'pass'
        end

