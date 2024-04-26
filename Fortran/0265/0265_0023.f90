integer function A() bind(c,name='ss1')
  implicit none
  A=2
end function
integer function A() bind(c,name='ss2')
   implicit none
     A=1
end function

program main
  interface
     integer function A() bind(c,name='ss2')
    implicit none
    end function
 end interface
  integer::res=0

  OPEN(10,FILE="fort.1",FORM="FORMATTED")
   WRITE(10,*)A()+10
    CLOSE(10)

  OPEN(15,FILE="fort.1",FORM="FORMATTED")
  READ(15,*)res
  CLOSE(15,STATUS="DELETE")

  if(res /= 11) print*,"101"
  print*,"PASS"
 
 call z1
contains
 subroutine z1
  implicit none
  interface
     integer function A() bind(c,name='ss1')
    implicit none
    end function
 end interface
  integer::res2=0
  OPEN(10,FILE="fort.1",FORM="FORMATTED")
   WRITE(10,*)A()+10
    CLOSE(10)

  OPEN(15,FILE="fort.1",FORM="FORMATTED")
  READ(15,*)res2
  CLOSE(15,STATUS="DELETE")

  if(res2 /= 12) print*,"102"

 end

END PROGRAM 

