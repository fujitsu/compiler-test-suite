    Program main
    character(80)            :: text, temp
    integer                  :: i, l=80
    
    do kk=1,80
      text(kk:kk)='x'
    end do
    text(10:10)=achar(9)
    text(20:20)=achar(9)
    text(30:30)=achar(9)
    k=9
    forall (i=1:l, text(i:i) == ac(k+1)) text(i:i)=' '
    
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
      end do
     end function
     pure function ac(k)
       character*1 ac
       intent(in) ::k
       ac=achar(k-1)
     END FUNCTION
    end

