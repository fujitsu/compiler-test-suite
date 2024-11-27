program main

  integer,parameter :: N=10000, M=10
  integer,dimension(1:N) :: suma,sumb,sumc,sumd,sume
  integer,dimension(1:M) :: sumk
  integer all

  suma = (/(i,i=1,N)/)
  sumb = (/(i*i,i=1,N)/)
  sumc = (/(i+i,i=1,N)/)
  sumd = (/(i-1,i=1,N)/)
  sume = (/(i+1,i=1,N)/)

  all = sum(suma)+sum(sumb)+sum(sumc)+sum(sumd)+sum(sume)
  i1  = sum(suma(1:1000))+sum(sumb(1:1000))+sum(sumc(1:1000))+sum(sumd(1:1000))+sum(sume(1:1000))
  i2  = sum(suma(1001:2000))+sum(sumb(1001:2000))+sum(sumc(1001:2000))+sum(sumd(1001:2000))+sum(sume(1001:2000))
  i3  = sum(suma(2001:3000))+sum(sumb(2001:3000))+sum(sumc(2001:3000))+sum(sumd(2001:3000))+sum(sume(2001:3000))
  i4  = sum(suma(3001:4000))+sum(sumb(3001:4000))+sum(sumc(3001:4000))+sum(sumd(3001:4000))+sum(sume(3001:4000))
  i5  = sum(suma(4001:5000))+sum(sumb(4001:5000))+sum(sumc(4001:5000))+sum(sumd(4001:5000))+sum(sume(4001:5000))
  i6  = sum(suma(5001:6000))+sum(sumb(5001:6000))+sum(sumc(5001:6000))+sum(sumd(5001:6000))+sum(sume(5001:6000))
  i7  = sum(suma(6001:7000))+sum(sumb(6001:7000))+sum(sumc(6001:7000))+sum(sumd(6001:7000))+sum(sume(6001:7000))
  i8  = sum(suma(7001:8000))+sum(sumb(7001:8000))+sum(sumc(7001:8000))+sum(sumd(7001:8000))+sum(sume(7001:8000))
  i9  = sum(suma(8001:9000))+sum(sumb(8001:9000))+sum(sumc(8001:9000))+sum(sumd(8001:9000))+sum(sume(8001:9000))
  i10 = sum(suma(9001:10000))+sum(sumb(9001:10000))+sum(sumc(9001:10000))+sum(sumd(9001:10000))+sum(sume(9001:10000))

  sumk = (/i1,i2,i3,i4,i5,i6,i7,i8,i9,i10/)

  if (sum(sumk)==all) then
    print *,'ok'
  else
    print *,'ng'
    print *,sum(sumk)
    print *,all
  endif

end
