  module m0
   contains
     function kk()
       kk=1
     end function
  end
  module mod01
  use m0
  type base
    contains
      procedure,nopass::prc
  end type
  type ext
  end type
  public::base
  private::ext
  contains
    function   prc(kk)
       write(6,*) 'NG call'
       prc=-1-kk
    end function
  end module

  module mod02
  use m0
  type base
  end type
  type, extends(base)::ext
    contains
      procedure,nopass::prc
  end type
  contains
    function   prc(k)
    write(23,*) 'Okay'
    prc=1
    if (k/=1) print *,9001
    end function
  end module

  program main
  use mod01
  use mod02, only:ext
  type(ext)::var
  if(var%prc(kk()) /=1) print *,2001
print *,'pass'
  end program main
