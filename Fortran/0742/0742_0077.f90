module outp
   interface Output
      module procedure Output_Str
      module procedure Output_StrInt
   end interface
contains

  subroutine Output_Str(txt)
    character(len=*) :: txt
    write(23,'(a)') txt
  end subroutine Output_Str

  subroutine Output_StrInt(txt,i)
    character(len=*) :: txt
    integer          :: i
    write(23,'(a,i5)') txt,i
  end subroutine Output_StrInt

end module outp

program main
use outp

call Output('Hello')
call Output('First integer:',5)
call Output('Now second integer:',15)
call chk
print *,'pass'

end program main
subroutine chk
character*50 r
rewind 23
read(23,'(a)') r;if (r/='Hello')write(6,*) "NG"
read(23,'(a)') r;if (r/='First integer:    5')write(6,*) "NG"
read(23,'(a)') r;if (r/='Now second integer:   15')write(6,*) "NG"
end
