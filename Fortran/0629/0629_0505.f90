integer a(10,10)
if (.false.) a=reshape((/(i,i=1,100)/),(/10,10/),order=(/1,2/))
print *,'pass'
end
