call test()
print *,'pass'
end

  subroutine test()
  integer::a(8),b(8),c(8),d(8),e(8),f(8),g(8),h(8)
  f=1;g=-1;h=(/1,2,1,2,1,2,1,2/)
!$omp parallel workshare
  forall (i=1:8)
      a(i) = i
      b    = i
      a(i) = b(i) + a(i)
      c(i) = a(i) + b(i)
      d(i) = c(i) - a(i) + b(i)
      e(i) = d(i) - c(i) - a(i) + b(i)
      f(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
      g(i) = ( a(i) + b(i) + c(i) + d(i) + e(i) + f(i) + g(i) + 4 ) / i
      h(i) = a(h(i))+b(h(i))+c(h(i))+d(h(i))+e(h(i))+f(h(i))+g(h(i))
  end forall
!$omp end parallel workshare
  if(any(a/=(/  9, 10, 11, 12, 13, 14, 15, 16/))) print *,"fail"
  if(any(b/=(/  8,  8,  8,  8,  8,  8,  8,  8/))) print *,"fail"
  if(any(c/=(/ 17, 18, 19, 20, 21, 22, 23, 24/))) print *,"fail"
  if(any(d/=(/ 16, 16, 16, 16, 16, 16, 16, 16/))) print *,"fail"
  if(any(e/=(/ -2, -4, -6, -8,-10,-12,-14,-16/))) print *,"fail"
  if(any(f/=(/ 49, 49, 49, 49, 49, 49, 49, 49/))) print *,"fail"
  if(any(g/=(/100, 50, 33, 25, 20, 16, 14, 12/))) print *,"fail"
  if(any(h/=(/197,147,197,147,197,147,197,147/))) print *,"fail"
  end
