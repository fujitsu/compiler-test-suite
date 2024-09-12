
module mod
  integer(kind=8),target :: t1 = 123
  integer(kind=8),target,dimension(5) :: a1 = (/5,6,7,8,9/)
end module mod

program test
  print *, "subroutine"
  call sub0
  print *, "subroutine"
  call sub1

contains

  subroutine sub0 ()
    integer(kind=8),target :: t1 = 3
    integer(kind=8),target,dimension(2,3) :: a1 = reshape((/5,6,7,8,9,10/),(/2,3/))
    integer(kind=8),pointer :: p1
    integer(kind=8),pointer :: p2(:,:)
    integer(kind=8),pointer :: p3
    integer(kind=8),pointer :: p4(:)
    integer(kind=8),pointer :: p5(:)
    data p1 /t1/
    data p2 /a1/
    data p3 /a1(2,1)/
    data p4 /a1(2,2:3)/
    data p5 /a1(2,1:3:2)/
    
    print *, p1
    print *, p2
    print *, p3
    print *, p4
    print *, p5
  end subroutine sub0

  subroutine sub1 ()
    use mod
    integer(kind=8),pointer :: p1
    integer(kind=8),pointer :: p2(:)
    integer(kind=8),pointer :: p3
    integer(kind=8),pointer :: p4(:)
    integer(kind=8),pointer :: p5(:)
    data p1 /t1/
    data p2 /a1/
    data p3 /a1(4)/
    data p4 /a1(2:4)/
    data p5 /a1(1:4:2)/
  
    print *, p1
    print *, p2
    print *, p3
    print *, p4
    print *, p5
  end subroutine sub1

end program test
