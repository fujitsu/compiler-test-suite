function strfunc()
  type :: str
    sequence
    integer :: iii
  end type
  type(str) :: strfunc
  strfunc = str(1)
end function

interface
  function strfunc()
    type :: str
    sequence
      integer :: iii
    end type
    type(str) :: strfunc
  end function
end interface

type :: str
    sequence
  integer :: iii
end type

procedure(type(str)),pointer :: psss
psss=>strfunc

print *,'pass'
end
