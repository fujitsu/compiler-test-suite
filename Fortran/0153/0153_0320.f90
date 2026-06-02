        common /com/id,jd                    
equivalence (kd,ke)
equivalence (jd,kk)
equivalence (yd,ye)
equivalence (yd,jd)
  !$omp parallel default(private) shared(id) 
  !$omp parallel shared(/com/)            
  !$omp endparallel                      
  !$omp endparallel                     
print *,'pass'
        end     
