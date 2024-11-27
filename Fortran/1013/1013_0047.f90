TYPE TEST
   INTEGER :: X,Y
END TYPE TEST

TYPE (TEST) ::A (5001)= TEST(300 ,-300)
!$omp threadprivate(A)

print *,A(1),A(5001)
end

