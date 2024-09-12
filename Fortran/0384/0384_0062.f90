interface
 subroutine sub2()
 end subroutine
end interface
  procedure(sub2):: p1
  call p1
  call sub2
end
 subroutine sub2()
 end subroutine
 subroutine p1()
print *,"pass"
 end subroutine

