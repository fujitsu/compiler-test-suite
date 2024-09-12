         subroutine s1(d1)
         type base
          integer :: ii = 3
         end type
        
         integer :: d1
        
         type,extends(base) :: ty
           integer :: jj = 4
         end type
       
         type,extends(ty) :: tty
           integer :: kk = 5
         end type
      
        type(ty),target,save :: ty_obj(3)
        type(tty),target,save :: tty_obj(3)
        class(*),pointer:: ccmp(:)=>ty_obj
        class(*),pointer:: ccmp2(:)
        
        data ccmp2 /ty_obj/
      
        if(d1 .eq. 1) then
        tty_obj%kk = 7
        select type(s1=>ccmp(1))
        type is(ty)
          if(s1%jj .ne. 4) print*,"122"
        class default
         print*,"121"
        end select
          ccmp=>tty_obj
        end if
       
        if(d1 .eq. 2) then
        select type(s1=>ccmp(2))
        type is(tty)
          if(s1%kk .ne. 7) print*,"122",s1%kk
          s1%ii = 12
        class default
         print*,"123"
        end select
        ccmp=>ty_obj
        end if
       
        if(d1 .eq. 3) then
        select type(s1=>ccmp(3))
        type is(ty)
          if(s1%ii .ne. 3) print*,"124"
        class default
         print*,"125"
        end select
        end if 
        
        if(d1 .eq. 1) then
        tty_obj%kk = 7
        select type(s1=>ccmp2(1))
        type is(ty)
          if(s1%jj .ne. 4) print*,"122"
        class default
         print*,"121"
        end select
          ccmp2=>tty_obj
        end if
       
        if(d1 .eq. 2) then
        select type(s1=>ccmp2(1))
        type is(tty)
          if(s1%kk .ne. 7) print*,"122",s1%kk
          s1%ii = 12
        class default
         print*,"123"
        end select
        ccmp2=>ty_obj
        end if
       
        if(d1 .eq. 3) then
        select type(s1=>ccmp2(1))
        type is(ty)
          if(s1%ii .ne. 3) print*,"124"
        class default
         print*,"125"
        end select
        end if

       
        end
       
        interface
        subroutine s1(d1)
        integer :: d1
        end
        end interface
        integer :: ii = 1
        do ii=1,3
        call s1(ii)
        end do
        print*,"Pass"
        end
       

