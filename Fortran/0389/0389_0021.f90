    Program main
    character(80)            :: text
    integer                  :: i, l=79
    character*1 ::ac(1),ad
    ac(1)=achar(9)
    ad='x'
    
    do kk=1,80
      text(kk:kk)='x'
    end do
    text(10:10)=achar(9)
    text(20:20)=achar(9)
    text(30:30)=achar(9)

    forall (i=1:l, text(i:i+1) == ac(1)//ad) text(i:i)=' '
    
    if (chk(text))print *,'error'
    print *,'pass'
    contains
     function chk(z)
      character(*) z
      logical chk
      chk=.false.
      do kx=1,len(z)
        select case (kx)
          case (10,20,30)
           if (text(kx:kx)/=' ')chk=.true.
          case default
           if (text(kx:kx)/='x')chk=.true.
        end select
        if (chk)print *,kx,text(kx:kx)
        if (chk)exit
      end do
     end function
     pure function acc(k,j)
       character*(j) acc
       intent(in) ::k,j
       acc=achar(k-1)
     END FUNCTION
    end


