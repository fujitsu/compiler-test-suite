module m1
  procedure(),pointer :: test
end module m1

module m12
  use m1
contains
  subroutine sub2
    call test()
  end subroutine 
end 
  use m12
print *,'pass'

end 
