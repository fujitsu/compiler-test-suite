 program main
  integer,parameter::sp=kind(1e0)
  integer,parameter::dp=selected_real_kind(2*precision(1e0_sp))
  integer,parameter::qp=selected_real_kind(4*precision(1e0_sp))
  real(sp) ar
  real(dp) ad
  real(qp) aq
  ar = 0.0
  ad = 0.0_dp
  aq = 0.0_qp
  write (16,*) ar, sqrt(ar)
  write (16,*) ad, sqrt(ad)
  write (16,*) aq, sqrt(aq)
   call chk
print *,'pass'
  end program main
subroutine chk
real(4)::x1,y1
real(8)::x2,y2
real(16)::x3,y3
rewind 16
read(16,*) x1,y1;if (x1/=y1)print *,'error-1'
read(16,*) x2,y2;if (x2/=y2)print *,'error-2'
read(16,*) x3,y3;if (x3/=y3)print *,'error-3'
end
