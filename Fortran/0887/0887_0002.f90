PROGRAM MAIN
INTEGER::index_var1=100
goto 2
DO CONCURRENT (index_var1=10:4:-2,index_var1/=6)
END DO
2 index_var1=100
END PROGRAM

