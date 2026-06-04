         type ty
         integer :: jj
         end type
          class(ty),allocatable:: ii(:)
          allocate( ii(2))
          select type (asc=>ii)
           class default
            select type(asc=>ii)
             type is (ty)
              ii%jj=2
              asc%jj=4
              if(any(asc%jj.ne.4))print*,"102"
            end select     
            select type (asc=>ii)
              type is (ty)
                if(any(asc%jj.ne.4))print*,"103"
                asc%jj =12
              class default
                print*,"902"
            end select
          end select
          select type (asc=>ii)
              type is (ty)
                if(any(asc%jj.ne.12))print*,"101"
              class default
                print*,"901"
          end select
          select type (asc=>ii)
            class is(ty)
            select type(asc=>ii)
             class default
              select type(asc=>ii)
               type is (ty)
                ii%jj=2
                asc%jj=14                    !jwdfadxc.c DPD of asc contains ii,hreplaceassocvar asc with ii
                if(any(asc%jj.ne.14))print*,"102"
              end select     
            end select     
            select type (asc=>ii)
              type is (ty)
                if(any(asc%jj.ne.14))print*,"103"
                asc%jj =12
              class default
                print*,"902"
            end select
          end select
          select type (asc=>ii)
              type is (ty)
                if(any(asc%jj.ne.12))print*,"101"
              class default
                print*,"901"
          end select
         print*,"PASS"
        end
       
       

