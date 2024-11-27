TYPE humongous_matrix(k, d)
INTEGER, KIND :: k = kind(0.0)
INTEGER(selected_int_kind(12)), LEN :: d
REAL(k) :: element(d,d)
END TYPE
end
