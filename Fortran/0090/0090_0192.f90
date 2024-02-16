program main

  integer,parameter :: NN=20
  integer,dimension(1:NN) :: a,b,c,d,e,f,g
  integer,dimension(1:NN) :: h,i,j,k,l,m,n
  integer ires1,ires2

  call init_data()

  a(1:10)  = b(2:11) + c(3:12) + d(4:13) + e(5:14) + f(6:15) + g(7:16)
  h(11:20) = i(10:19) + j(8:17) + k(7:16) + l(6:15) + m(5:14) + n(4:13)

  ires1 = sum(a) / 10 + mod(sum(a),10)
  ires2 = sum(h) / 10 + mod(sum(h),10)

  if (ires1 == ires2) then
    print *,"OK"
  else
    print *,"NG : ",ires1,ires2
  endif

  contains
  subroutine init_data()
  a = (/(mod(ii,3),ii=1,NN)/)
  b = a
  c = b
  d = c
  e = (/(a(NN-ii+1),ii=1,NN)/)
  f = e
  g = f
  h = g
  i = (/(mod(ii,2)+1,ii=1,NN)/)
  j = i
  k = j
  l = k
  m = (/(a(ii)-i(ii),ii=1,NN)/)
  n = m
  end subroutine
end program

