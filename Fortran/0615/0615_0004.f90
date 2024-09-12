integer omp_get_thread_num
integer omp_get_num_threads
integer tn
integer nt
integer adr(128)
character*10 i
character*10 k
integer error
!$ call omp_set_dynamic(.false.)
!$ call omp_set_num_threads(4)

error = 0
tn = 0
nt = 1
!$ nt = omp_get_num_threads()
!$omp parallel private(i, tn)
!$ tn = omp_get_thread_num()
i = 'test'
!$omp single
write(i,*) 'test', tn
write(k,*) 'test', tn
!$omp end single copyprivate(i)
if(i .ne. k) then
!$omp atomic
  err = err+1
endif
adr(tn) = loc(i)
!$omp end parallel

if(nt .gt. 1) then
  do m=1, nt
    do n=m+1, nt
      if(adr(m) .eq. adr(n)) then
        err = err+1
      end if
    end do
  end do
end if

if(error .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif
end

