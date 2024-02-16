complex, save :: ii(3)
  ii = (10.34,5.68)
  if(any(ii%re /= 10.34))then
  print*,101
  endif

  BLOCK
    complex, save :: ii(3)
           ii = (10.34,5.68)
        if(any(ii%re /= 10.34)) then 
        print*,102
        endif
  end BLOCK


   if(any(ii%re /= 10.34)) then 
   print*,103
   endif
   PRINT*,"PASS"
end
