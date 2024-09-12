      call s1
      print *,'pass'
      end
module loandata
implicit none
type loantype
 real::amount,&
       rate
 integer::months
end type loantype
end module loandata
      subroutine s1
use loandata
implicit none
type (loantype)::data
real ::payment

call readdata
call monthlypayment(payment)
call schedule
contains

subroutine readdata
   write(1,*) 10.
   write(1,*) 10.
   write(1,*) 10
   rewind 1
write (11,*) 'Enter loan amount '
read (1,*) data%amount
write(11,*) 'Enter interest rate'
read (1,*)data%rate
write(11,*) 'Enter lengh of loan (in months)'
read (1,*) data%months
end subroutine readdata

subroutine monthlypayment(payment)
real,intent(out) ::payment
real ::rate
rate =data%rate/1200.0
payment =rate *data%amount *(1.0+rate)**data%months
payment =payment /((1.0+rate)**data%months-1.0)
end subroutine monthlypayment
subroutine schedule
real   ::balance , &
        amountrepayed, &
        amountpayed, &
        totalinterest
integer ::month
balance =data%amount
amountrepayed =0.0
amountpayed =0.0
totalinterest =0.0
do month=1,data%months
 totalinterest=totalinterest+payment-(data%amount/data%months)
 balance =balance-(data%amount/data%months)
 amountrepayed = data%amount-balance
 amountpayed = amountpayed +payment

 write(1,*)'balance = ', balance 
 write(1,*)'amountrepayed = ', amountrepayed 
 write(1,*)'totalinterest = ', totalinterest
 write(1,*)'amountpayed = ',amountpayed
end do
return
end subroutine schedule
end
