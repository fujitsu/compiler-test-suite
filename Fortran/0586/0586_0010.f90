         type base
          integer :: ii = 3
         end type
         type,extends(base) :: ty
           integer :: jj = 4
         end type
         type,extends(ty) :: tty
           integer :: kk = 5
         end type
         integer :: ii2 = 1


         type(ty),target,save :: ty_obj
         type(tty),target,save :: tty_obj
         type(tty),target,save :: ty_objarr(3,3)

         type tt
           class(base),pointer:: ccmp=>ty_obj
           class(base),pointer:: ccmp2(:,:)=>ty_objarr
         end type
    
        do ii2=1,3
        call s1(ii2)
        end do
       print*,"Pass"
  contains    
       subroutine s1(d1)
        integer::d1
      
        type(tt) :: obj(10)
        if(d1 .eq. 1) then
        tty_obj%kk = 7
        do ii=1,10  
        select type(s1=>obj(ii)%ccmp)
        type is(ty)
          if(s1%jj .ne. 4) print*,"122"
        class default
         print*,"121"
        end select
          obj(ii)%ccmp=>tty_obj
        end do
        end if
       
        if(d1 .eq. 2) then
        do ii=1,10  
        select type(s1=>obj(ii)%ccmp)
        type is(ty)
          if(s1%jj .ne. 4) print*,"122",s1%jj
          s1%ii = 12
        class default
         print*,"123"
        end select
        obj(ii)%ccmp=>ty_obj
        end do
        end if
       
        if(d1 .eq. 3) then
        select type(s1=>obj(3)%ccmp)
        type is(ty)
          if(s1%ii .ne. 12) print*,"124",s1%ii
        class default
         print*,"125"
        end select
        end if

       if(d1 .eq. 1) then
        ty_objarr(2,2)%kk = 7
        do ii=1,10  
        select type(s1=>obj(ii)%ccmp2(1,1))
        type is(tty)
          if(s1%jj .ne. 4) print*,"122"
        class default
         print*,"128"
        end select
        end do
        end if
       
        if(d1 .eq. 2) then
        do ii=1,10  
        select type(s1=>obj(ii)%ccmp2(2,2))
        type is(tty)
          if(s1%kk .ne. 7) print*,"122",s1%kk
          s1%ii = 12
        class default
         print*,"129"
        end select
        end do
        end if
       
        if(d1 .eq. 3) then
        select type(s1=>obj(3)%ccmp2(3,3))
        type is(tty)
          if(s1%ii .ne. 3) print*,"124"
        class default
         print*,"130"
        end select
        end if

        end
        end
       
               

