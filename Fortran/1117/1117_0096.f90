call test01()
print *,'pass'
end
subroutine test01()
!$omp PARALLEL DEFAULT(SHARED)
 x = 10
 y = 20
 x = x + y
!$omp END PARALLEL
end

subroutine test02()
common /com/xx,yy
!$omp threadprivate(/com/)
 x = 10
 y = 20
 y = xx 
 x = x + y
end

subroutine test03()
!$omp PARALLEL private(ii) DEFAULT(SHARED)
 ii = 1
 ii=ii+1
 x = 10
 y = 20
 x = x + y
!$omp END PARALLEL
end

subroutine test04()
!$omp PARALLEL DEFAULT(PRIVATE)
 ii = 1
 ii=ii+1
 x = 10
 y = 20
 x = x + y
!$omp END PARALLEL
end

subroutine test05()
!$omp PARALLEL DEFAULT(SHARED)
 ii = 1
 x = 10
 y = 20
 x = x + y
 ii=ii+1
!$omp END PARALLEL
end

subroutine test06()
!$omp PARALLEL DEFAULT(SHARED)
 x = 10
 y = 20
 x = x + y
 ii = 1
 ii=ii+1
!$omp END PARALLEL
end

subroutine test07()
!$omp PARALLEL DEFAULT(SHARED)
 x = 10
 x = x 
 y = 20
 x = x + y
 ii = 1
 ii=ii+1
!$omp END PARALLEL
end

subroutine test08()
!$omp PARALLEL DEFAULT(SHARED) SHARED(y)
 x = 10
 x = x 
 y = 20
 x = x + y
 ii = 1
 ii=ii+1
!$omp END PARALLEL
end

subroutine test09()
!$omp PARALLEL DEFAULT(SHARED) SHARED(ii)
 x = 10
 x = x
 y = 20
 x = x + y
 ii = 1
 ii=ii+1
!$omp END PARALLEL
end
