complex(4),dimension(5,5)::Matrix=2.123456789
complex(8),dimension(5)::Vector=.9123456789_8,Vector_Add,R_vector
R_vector = MATMUL(Matrix,Vector)
if (any(abs(R_vector-9.68663311)>0.00001))print *,'error-2'
print *,'pass'
end
