subroutine sub()
  enum, bind(c)
    enumerator :: hoge=1, fuga=2
  end enum
  block 
    enum, bind(c)
      enumerator :: hoge=3, fuga=4
    end enum
    if (hoge/=3) print *,1
    if (fuga/=4) print *,2
  end block  
  if (hoge/=1) print *,3
  if (fuga/=2) print *,4
  block
    if (hoge/=1) print *,5
    if (fuga/=2) print *,6
  end block
end subroutine sub

program main
  call sub
  print *,'pass'
end program main
