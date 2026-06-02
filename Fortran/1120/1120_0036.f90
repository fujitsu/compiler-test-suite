program main
integer ::var1
integer:: var2=2
integer,save::var3
var1=1
!$omp task
  var1=0
  var2=0
  var3=0
!$omp endtask
print *,'pass'
end
