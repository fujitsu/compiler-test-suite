      IVPASS = 0
      IVFAIL = 0
      I02 = 06
      NUVI = I02
        PIVS = 3.1415926535897932384626434
        BVS = 1.5747025767
        AVS = TAN(BVS)
           IF (AVS + 256.02) 20090, 10090, 40090
40090      IF (AVS + 255.98) 10090, 10090, 20090
10090      IVPASS = IVPASS + 1
           GO TO 0091
20090      IVFAIL = IVFAIL + 1
           RVCORR = -255.99869791534212
           WRITE (NUVI, *) IVTNUM, AVS, RVCORR
 0091      CONTINUE
           IVTNUM = 10
        AVS = TAN((3.0 * PIVS / 2.0) - 1.0 / 1024.0)
           if (AVS-1024.1>0.)print *,'error'
           IF (AVS - 1023.9) 20100, 10100, 40100
40100      IF (AVS - 1024.1) 10100, 10100, 20100
10100      IVPASS = IVPASS + 1
           GO TO 0101
20100      IVFAIL = IVFAIL + 1
           RVCORR = 1023.99967447914597
           WRITE (NUVI, *) IVTNUM, AVS, RVCORR
 0101      CONTINUE
         print *,'pass'
      END
