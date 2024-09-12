subroutine s1
interface 
  impure subroutine ss1()
  end subroutine
end interface
end

call s1
call s2
call s3
call s4
call s5
call s6
print *,'pass'
end

impure subroutine ss1
 end subroutine

impure subroutine ss2
 end subroutine

subroutine s2
interface 
  impure subroutine ss2()
  end subroutine
end interface
end 

subroutine s3
interface 
  impure subroutine ss3()
  end subroutine
end interface
end
 subroutine ss3
 end subroutine

subroutine s4
interface 
  subroutine ss4()
  end subroutine
end interface
end
 impure subroutine ss4
 end subroutine

 subroutine ss5
 end subroutine
subroutine s5
interface 
  impure subroutine ss5()
  end subroutine
end interface
end

 impure subroutine ss6
 end subroutine
subroutine s6
interface 
  subroutine ss6()
  end subroutine
end interface
end
