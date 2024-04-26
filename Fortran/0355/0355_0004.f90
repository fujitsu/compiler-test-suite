  block data
     common /comx/ tc1,tp1,tp2
     
     complex(kind=8),target  :: tc1 = (1.0_8, 2.0_8)
     complex(kind=8),pointer :: tp1
  end block data
  
  program main
    common /comx/ tc1,tp1,tp2
    complex(kind=8),target  :: tc1
    complex(kind=8),pointer :: tp1

    tp1=>tc1

    if (tp1 .ne. tc1) then
       print *, "NG"
    else
       print *, "OK"
    end if
    
  end program main
  
