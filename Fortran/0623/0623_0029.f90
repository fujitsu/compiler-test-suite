common /first/ a,b,c
common d,e,f, /second/ g, /cccc/ j
!$omp threadprivate(/cccc/,/first/)
common /first/ h
print *,"pass"
end
