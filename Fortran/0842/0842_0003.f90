 !$omp parallel do simd shared(j1) collapse(1)
  do j1=1,10
   do j2=1,10
    do j3=1,10
    end do 
   end do
  end do
end
