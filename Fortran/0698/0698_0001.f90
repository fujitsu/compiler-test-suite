program main

  integer,parameter          :: N=100
  integer,parameter          :: M=N/10
  real,dimension(1:N)        :: real1,real2,real12
  real,dimension(1:M,1:M)    :: real3,real4,real34
  logical,dimension(1:N)     :: mask12
  logical,dimension(1:M,1:M) :: mask34
  logical		     :: logi12,logi34
  integer                    :: count1,count2
  logical		     :: ok

  ok     = .true.
  real1  = (/(real(i)/real(3),i=1,N)/)
  real2  = (/(real(i)/real(5),i=1,N)/)
  real3  = reshape((/(real(i)/real(7),i=1,N)/),(/M,M/))
  real4  = reshape((/(real(i)/real(9),i=1,N)/),(/M,M/))
  mask12 = (/(mod(i,7)==0,i=1,N)/)
  mask34 = reshape((/(mod(i,5)==0,i=1,N)/),(/M,M/))

  real1_sum = sum(real1)
  real2_sum = sum(real2)
  real3_sum = sum(real3)
  real4_sum = sum(real4)

  real11_sum = sum(real1,mask=mask12)
  real31_sum = sum(real3,mask=mask34)

  real12_sum = sum(real1,dim=1,mask=mask12)
  real32_sum = sum(sum(real3,dim=2,mask=mask34))

  real13_sum = sum(real1,dim=1)
  real33_sum = sum(sum(real3,dim=2))

  if ((int(real1_sum) /= 1683).or.&
      ((int(real2_sum) /= 1010 .and. int(real2_sum) /= 1009)).or.&
      (int(real3_sum) /= 721).or.&
      (int(real4_sum) /= 561).or.&
      (int(real11_sum) /= 245).or.&
      (int(real31_sum) /= 150).or.&
      (int(real12_sum) /= 245).or.&
      (int(real32_sum) /= 150).or.&
      (int(real13_sum) /= 1683).or.&
      (int(real33_sum) /= 721)) then
    ok = .false.
  endif
  print *,ok

  real1  = (/(real(i)/real(30),i=1,N)/)
  real2  = (/(real(i)/real(50),i=1,N)/)
  real3  = reshape((/(real(i)/real(70),i=1,N)/),(/M,M/))
  real4  = reshape((/(real(i)/real(90),i=1,N)/),(/M,M/))

  real1_product = product(real1)
  real2_product = product(real2)
  real3_product = product(real3)
  real4_product = product(real4)

  real21_product = product(real2,mask=mask12)
  real41_product = product(real4,mask=mask34)

  real22_product = product(real2,dim=1,mask=mask12)
  real42_product = product(product(real4,dim=2,mask=mask34))

  real23_product = product(real2,dim=1)
  real43_product = product(product(real4,dim=2))

  if ((real1_product  < 0).or.&
      (int(real2_product)  /= 0).or.&
      (int(real3_product)  /= 0).or.&
      (int(real4_product)  /= 0).or.&
      (int(real21_product) /= 0).or.&
      (int(real41_product) /= 0).or.&
      (int(real22_product) /= 0).or.&
      (int(real42_product) /= 0).or.&
      (int(real23_product) /= 0).or.&
      (int(real43_product) /= 0)) then
    ok = .false.
  endif
  print *,ok

  real12_dot_product = dot_product(real1,real2)
  real34_dot_product = dot_product(reshape(real3,(/N/)),reshape(real4,(/N/)))

  if ((int(real12_dot_product) /= 225).or.&
      (int(real34_dot_product) /= 53)) then
    ok = .false.
  endif
  print *,ok

  real12_matmul = sum(matmul(reshape(real1,(/M,M/)),reshape(real2,(/M,M/))))
  real34_matmul = sum(matmul(real3,real4))

  if ((int(real12_matmul) /= 1755).or.&
      (int(real34_matmul) /= 417)) then
    ok = .false.
  endif
  print *,ok

  real1_maxval = maxval(real1)
  real2_maxval = maxval(real2)
  real3_maxval = maxval(real3)
  real4_maxval = maxval(real4)
  real11_maxval = maxval(real1,dim=1)
  real31_maxval = maxval(maxval(real3,dim=2))
  real12_maxval = maxval(real1,mask=mask12)
  real32_maxval = maxval(real3,mask=mask34)
  real13_maxval = maxval(real1,dim=1,mask=mask12)
  real33_maxval = maxval(maxval(real3,dim=2,mask=mask34))

  if ((int(real1_maxval) /= 3).or.&
      (int(real2_maxval) /= 2).or.&
      (int(real3_maxval) /= 1).or.&
      (int(real4_maxval) /= 1).or.&
      (int(real11_maxval) /= 3).or.&
      (int(real31_maxval) /= 1).or.&
      (int(real12_maxval) /= 3).or.&
      (int(real32_maxval) /= 1).or.&
      (int(real13_maxval) /= 3).or.&
      (int(real33_maxval) /= 1)) then
    ok = .false.
  endif
  print *,ok

  index1_maxloc = maxval(maxloc(real1))
  index2_maxloc = maxval(maxloc(real2))
  index3_maxloc = maxval(maxloc(real3))
  index4_maxloc = maxval(maxloc(real4))
  index12_maxloc = maxval(maxloc(real2,mask=mask12))
  index34_maxloc = maxval(maxloc(real4,mask=mask34))

  if ((int(index1_maxloc) /= 100).or.&
      (int(index2_maxloc) /= 100).or.&
      (int(index3_maxloc) /= 10).or.&
      (int(index4_maxloc) /= 10).or.&
      (int(index12_maxloc) /= 98).or.&
      (int(index34_maxloc) /= 10)) then
    ok = .false.
  endif
  print *,ok

  real1_minval = minval(real1)
  real2_minval = minval(real2)
  real3_minval = minval(real3)
  real4_minval = minval(real4)
  real11_minval = minval(real1,dim=1)
  real31_minval = minval(minval(real3,dim=2))
  real12_minval = minval(real1,mask=mask12)
  real32_minval = minval(real3,mask=mask34)
  real13_minval = minval(real1,dim=1,mask=mask12)
  real33_minval = minval(minval(real3,dim=2,mask=mask34))

  if ((int(real1_minval) /= 0).or.&
      (int(real2_minval) /= 0).or.&
      (int(real3_minval) /= 0).or.&
      (int(real4_minval) /= 0).or.&
      (int(real11_minval) /= 0).or.&
      (int(real31_minval) /= 0).or.&
      (int(real12_minval) /= 0).or.&
      (int(real32_minval) /= 0).or.&
      (int(real13_minval) /= 0).or.&
      (int(real33_minval) /= 0)) then
    ok = .false.
  endif
  print *,ok

  index1_minloc = maxval(minloc(real1))
  index2_minloc = maxval(minloc(real2))
  index3_minloc = maxval(minloc(real3))
  index4_minloc = maxval(minloc(real4))
  index12_minloc = maxval(minloc(real2,mask=mask12))
  index34_minloc = maxval(minloc(real4,mask=mask34))

  if ((int(index1_minloc) /= 1).or.&
      (int(index2_minloc) /= 1).or.&
      (int(index3_minloc) /= 1).or.&
      (int(index4_minloc) /= 1).or.&
      (int(index12_minloc) /= 7).or.&
      (int(index34_minloc) /= 5)) then
    ok = .false.
  endif
  print *,ok

  logi12 = all(real1==real2)
  logi34 = all(real3==real4)

  if (logi12 .neqv. logi34) then
    ok = .false.
  endif
  print *,ok

  logi12 = any(real1==real2)
  logi34 = any(real3==real4)

  if (logi12 .neqv. logi34) then
    ok = .false.
  endif
  print *,ok

  count1 = count(real1==real2)
  count2 = count(real3==real4)

  if (count1/=count2) then
    ok = .false.
  endif
  print *,ok

  real12 = merge(real1,real2,mask12)
  real34 = merge(real3,real3,mask34)
  real12_merge = sum(real12)
  real34_merge = sum(real34)

  if ((int(real12_merge) /= 110).or.&
      (int(real34_merge) /= 72)) then
    ok = .false.
  endif
  print *,ok

  real34 = transpose(real34)
  real34_transpose = sum(real34)

  if (int(real34_transpose) /= 72) then
    ok = .false.
  endif
  print *,ok

  if (ok) then
    print *,"OK"
  else
    print *,"NG"
  endif

end program
