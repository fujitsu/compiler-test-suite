PROGRAM MAIN
INTEGER::index_var1=100
x: do while (index_var1==100)
index_var1 = index_var1 + 1
cycle x
DO CONCURRENT (index_var1=10:4:-2,index_var1/=6)
END DO
END DO x
END PROGRAM

