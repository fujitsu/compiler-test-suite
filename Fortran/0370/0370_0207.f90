
program main  
  character(kind=1,len=10),target :: ss = 1_'abcdefghij'
  character(kind=1,len=3),target :: sa(3) = (/1_'xyz', 1_'opq', 1_'lmn'/)
  character(kind=1,len=10),pointer :: ps1 => ss
  character(kind=1,len= 2),pointer :: ps2 => ss(2:3)
  character(kind=1,len=2),pointer :: p1 => sa(2)(2:3)
  character(kind=1,len=:),pointer :: pns1 => ss
  character(kind=1,len=:),pointer :: pns2 => ss(2:3)
  character(kind=1,len=:),pointer :: pn1 => sa(2)(2:3)

  print *, sa
  print *, "----------"
  call sub (ps1,ps2,p1,pns1,pns2,pn1)
  print *, "----------"
  print *, ps1
  print *, ps2
  print *, p1
  print *, pns1
  print *, pns2
  print *, pn1
  print *, "----------"  
  contains
    subroutine sub (ps1, ps2, p1,pns1,pns2,pn1)
      character(kind=1,len=*),pointer :: ps1
      character(kind=1,len=2),pointer :: ps2
      character(kind=1,len=2),pointer :: p1
      character(kind=1,len=:),pointer :: pns1
      character(kind=1,len=:),pointer :: pns2
      character(kind=1,len=:),pointer :: pn1

      print *, ps1
      print *, ps2
      print *, p1
      print *, pns1
      print *, pns2
      print *, pn1
    end subroutine sub

end program main
