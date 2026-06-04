         class(*),pointer :: x
         class(*),pointer :: y
         class(*),pointer :: xx(:)
         class(*),pointer :: yx(:,:)
         logical::l
         allocate(x,source=1)
         allocate(y,source=1)
         allocate(xx(5),source=[13,14,15,16,17])
         allocate(yx(2,2),source=reshape([1,2,3,4],[2,2]))
         x => y
         select type(z=>x)
           type is (integer)
            if(.not.associated(x,y)) print *,'101'
                l=.false.
            if (associated(x) .and. &
                same_type_as(y,x) .and. &
                (loc(x)==loc(y))) then
            l = .true.
           end if
           if(.not.l) print *,'102'
          class default
           print *,'ng'
         end select
         select type(z=>xx)
           type is (integer)
            if (same_type_as(yx(1,1),xx(1)))then
              l = .true.
           end if
           if(.not.l) print *,'102'
            if (same_type_as(xx(2),yx(1,2)))then
              l = .true.
           end if
           if(.not.l) print *,'103'
          class default
           print *,'345'
         end select
         print *,'pass'
       end

