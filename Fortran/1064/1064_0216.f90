complex ::c,cc(2)
inquire( iolength=k ) c%im
if (k/=4) print *,k
inquire( iolength=k ) cc%im
if (k/=8) print *,k
inquire( iolength=k ) cc(:)%im
if (k/=8) print *,k
print *,'pass'
end
