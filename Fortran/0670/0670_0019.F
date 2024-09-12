	a0=                                                           1
	a1=                                                            1
	a2=                                                             1
	a3=                                                              1

 	b0=                                                           1
 	b1=                                                            1
 	b2=                                                             1
 	b3=                                                              1

9	j0=                                                           9
8	j1=                                                            9
7	j2=                                                             9
6	j3=                                                              9

        if (abs(a0-1)>0.001)print *,'e'
        if (abs(a1-1)>0.001)print *,'e'
        if (abs(a2-1)>0.001)print *,'e'
        if (abs(a3-1)>0.001)print *,'e'

        if (abs(b0-1)>0.001)print *,'e'
        if (abs(b1-1)>0.001)print *,'e'
        if (abs(b2-1)>0.001)print *,'e'
        if (abs(b3-1)>0.001)print *,'e'

        if (j0/=9)print *,'e'
        if (j1/=9)print *,'e'
        if (j2/=9)print *,'e'
        if (j3/=9)print *,'e'

        print *,'pass'
        end
