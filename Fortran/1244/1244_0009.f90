call integer
  print *,'sngtin11:pass'
end
subroutine integer
implicit none
integer(1)::i1
  interface i_i1
     procedure i_i1,bbb
  end interface
  call i_i1(i1)
  if(i1/=-1) print *,'err'
contains
  subroutine bbb(i1)
integer(1)::i1    
   i1=-1
  end subroutine bbb
  subroutine i_i1
  end subroutine i_i1
end subroutine integer
