  subroutine xxx(a)
  integer,intent(out):: a
  a=1
  end

  integer aaa(10)
  integer,parameter ::ip=1
i=1
  call xxx(10)
  call xxx(10+i)
  call xxx(int(1))
  call xxx(ip)

  call xxx(i)
  call xxx(aaa(1))
  end

  subroutine subbb()
  integer aaa(10)
  integer,parameter ::ip=1
i=1
  call xxx1(10)
  call xxx1(10+i)
  call xxx1(int(1))
  call xxx1(ip)

  call xxx1(i)
  call xxx1(aaa(1))
  end
  subroutine xxx1(a)
  integer,intent(out):: a
  a=1
  end

  subroutine subbbb()
  integer aaa(10)
  integer,parameter ::ip=1
  i=1
  call xxx2((/10/))
  call xxx2((/10+i/))
  call xxx2((/int(1)/))
  call xxx2((/ip/))
  call xxx2(aaa(aaa))

  call xxx2(i)
  call xxx2(aaa(1))
  end
  subroutine xxx2(a)
  integer,intent(out):: a(1)
  a=1
  end
