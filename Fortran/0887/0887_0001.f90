PROGRAM MAIN
INTEGER::index_var1=100
goto 2
y: DO CONCURRENT (index_var1=10:4:-2,index_var1/=6)
2 END DO y
END PROGRAM

