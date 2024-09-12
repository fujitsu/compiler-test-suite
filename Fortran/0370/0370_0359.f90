
subroutine s
  interface 
     subroutine s2() bind(c)
     end subroutine s2
  end interface
  procedure(s2),bind(c)::t1
  procedure(s2),bind(c,name="xyz")::t2
  procedure(s2),bind(c),pointer::t3=>s2
  call t1
  call t2
  call t3
end subroutine s

subroutine s2() bind(c)
  print *,"s2"
end subroutine s2

subroutine t1() bind(c)
  print *,"t1"
end subroutine t1

subroutine t2() bind(c,name="xyz")
  print *,"t2"
end subroutine t2

call s
end
