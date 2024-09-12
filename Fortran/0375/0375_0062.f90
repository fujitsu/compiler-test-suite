integer,parameter::i=1
interface
  subroutine s1()
    import i
  end subroutine
end interface
interface
  subroutine s2()
    import i
  end subroutine
  subroutine s3()
    import 
    integer i
  end subroutine
end interface
print *,'pass'
end
