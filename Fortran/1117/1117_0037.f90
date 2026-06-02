program main
integer a(1024), init, para, OMP_GET_NUM_THREADS
init = 0
para = 0

!$omp parallel do firstprivate(init)
  do i=1, 1024
    init = init+1
    a(i) = init
  end do
!$omp end parallel do

if(init .ne. 0) then
  write(*,*) "PRIVATE is not active"
end if

do i=1, 1024
  if(a(i) .ne. i) then
    para = 1
    exit
  end if
end do

if(para .eq. 0 .and. OMP_GET_NUM_THREADS() .eq. 1 ) then
   write(*,*) "ok"
   stop
end if

if(para .ne. 1) then
  write(*,*) "PARALLEL DO or FIRSTPRIVATE is not active"
end if

if((init .eq. 0) .and. (para .eq. 1)) then
  write(*,*) "ok"
end if

end
