!-Ncheck_std=08e or -Ncheck_std=03s
procedure(zzz),pointer::ppp
interface aaa
   procedure:: bbb,zzz
end interface
ppp=>zzz
call aaa(ccc)
rewind 7
read(7,*)n
if(n/=2) print *,'err'
print *,'sngtin31:pass'
contains
  subroutine bbb(ddd)
    interface
       subroutine ddd()
       end subroutine ddd
    end interface
write(7,*) 2
  end subroutine bbb
subroutine ccc
end subroutine ccc
  subroutine zzz()
  end subroutine zzz
end program
