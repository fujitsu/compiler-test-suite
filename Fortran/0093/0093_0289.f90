1  interface assignment(=)
     2  subroutine sub(i,j)
     3  real :: i
     4  intent(inout) :: i
     5  character :: j
     6  intent(in) :: j
     7  end subroutine 
     8  end interface
    10  complex:: a
    11  character :: cc
    12  cc='a'
    13  a%re=cc
    14  if (a%re.ne.1.0) print *,'err'
    15  print *,'pass'
    16  end
    17  subroutine sub(i,j)
    18  real :: i
    19  intent(inout) :: i
    20  character :: j
    21  intent(in) :: j
    22  i=1.0
    23  end subroutine 

