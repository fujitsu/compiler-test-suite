                  	   integer*4 m2(1)
              		   do 1 k=1,5
                            m2(1) = k
                            do 2 i=1,5
                    	       write(6,*) m2(1)
                 	       m2(1) = m2(1) + 1
2     continue
1     continue
                          end
