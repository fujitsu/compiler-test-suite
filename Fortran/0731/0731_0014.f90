program main
   write(1,*) "">"", LGT("","")
   write(1,*) ""<"", LLT("","")
   write(1,*) "">="", LGE("","")
   write(1,*) ""<="", LLE("","")
   call sub("","")
print *,'pass'
end program main
subroutine sub(a1,a2)
character*(*) a1,a2
   write(1,*) a1>a2, LGT(a1,a2)
   write(1,*) a1<a2, LLT(a1,a2)
   write(1,*) a1>=a2, LGE(a1,a2)
   write(1,*) a1<=a2, LLE(a1,a2)
call chk
end
subroutine chk
logical s1,s2
rewind 1
read(1,*) s1,s2; if (s1)write(6,*) "NG";if (s2)write(6,*) "NG"
read(1,*) s1,s2; if (s1)write(6,*) "NG";if (s2)write(6,*) "NG"
read(1,*) s1,s2; if (.not.s1)write(6,*) "NG";if (.not.s2)write(6,*) "NG"
read(1,*) s1,s2; if (.not.s1)write(6,*) "NG";if (.not.s2)write(6,*) "NG"
read(1,*) s1,s2; if (s1)write(6,*) "NG";if (s2)write(6,*) "NG"
read(1,*) s1,s2; if (s1)write(6,*) "NG";if (s2)write(6,*) "NG"
read(1,*) s1,s2; if (.not.s1)write(6,*) "NG";if (.not.s2)write(6,*) "NG"
read(1,*) s1,s2; if (.not.s1)write(6,*) "NG";if (.not.s2)write(6,*) "NG"
end
