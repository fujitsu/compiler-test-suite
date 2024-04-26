subroutine outpt(nlen)
  implicit none
  integer(kind=4):: nlen

  character(len=nlen+23):: fnamept
  character(len=nlen+23):: fnamepn
  integer:: itime=2
  integer:: nrnk =2

  write(fnamept,'(a,a,i7.7,a,i4.4,a)') '/x1234/s/y073/24/','pt_',itime,'_cpu',nrnk,'.data'
  write(fnamepn,'(a,a,i7.7,a,i4.4,a)') '/x1234/s/y073/24/','pn_',itime,'_cpu',nrnk,'.data'

  write(1,*)'#'//fnamept//'#'
  write(1,*)'#'//fnamepn//'#'
end subroutine outpt

  integer(kind=4):: nlen=17
call outpt(nlen)
call outpt(nlen)
call outpt(nlen)
call outpt(nlen)
print *,'pass'
end
