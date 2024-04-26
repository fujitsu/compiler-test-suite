program main
  real*8,dimension(5000)::$aa
  real*8,dimension(5000)::$bb
  real*8,dimension(5000)::$cc

  $cc=1.0
  $aa=0.0
  $bb=0.0
  
  do i=1,100
     call f1($aa,$bb,$cc)
  end do

  if ($cc(5000) .ne. 1) then
     print *, "NG"
  else
     print *, "OK"
  endif
  stop
end program

subroutine f1(a1,b1,c1)
  real*8,dimension(5000)::a1
  real*8,dimension(5000)::b1
  real*8,dimension(5000)::c1

  call f2(a1,b1,c1)
  call f2(c1,a1,b1)
contains
  subroutine f2(xx,yy,zz)
    real*8,dimension(5000)::xx
    real*8,dimension(5000)::yy
    real*8,dimension(5000)::zz

    do i=1,5000
       xx(i) = xx(i) * yy(i) + zz(i)
    end do
  endsubroutine f2
endsubroutine f1

