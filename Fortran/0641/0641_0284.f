      PROGRAM MAIN
       REAL*8 A(10), B(10), C(10), D(10)
       REAL*8 QA(10), QB(10), QC(10), QD(10)
       LOGICAL*4 LA(10), LB(10), LC(10), LD(10)
       LOGICAL*1 L1A(10), L1B(10), L1C(10), L1D(10)
       INTEGER N
       PARAMETER (N = 10)
       DATA B/10*1.0/ 
       DATA C/10*2.0/ 
       DATA D/5*0.,1,0,-1,1,-1/ 
       DATA QB/10*1.0/ 
       DATA QC/10*2.0/ 
       DATA QD/5*0.,1,0,-1,1,-1/ 
       DATA LA/5*.TRUE.,5*.FALSE./ 
       DATA LB/5*.TRUE.,5*.FALSE./ 
       DATA LC/5*.TRUE.,5*.FALSE./ 
       DATA LD/5*.TRUE.,5*.FALSE./ 
       DATA L1A/5*.TRUE.,5*.FALSE./ 
       DATA L1B/5*.TRUE.,5*.FALSE./ 
       DATA L1C/5*.TRUE.,5*.FALSE./ 
       DATA L1D/5*.TRUE.,5*.FALSE./ 
       DOUBLE PRECISION DD219, DD218, DD217, DD216, DD215, DD214, DD213
     X   , DD212, DD211, DD210, DD209, DD208, DD207, DD206, DD205, DD204
     X   , DD203, DD202, DD201, DD200, DD199, DD198, DD197, DD196, DD195
     X   , DD194, DD193, DD192, DD191, DD190, DD189, DD188, DD187, DD186
     X   , DD185, DD184, DD183, DD182, DD181, DD180
       DOUBLE PRECISION DD179, DD178, DD177, DD176, DD175, DD174, DD173
     X   , DD172, DD171, DD170, DD169, DD168, DD167, DD166, DD165, DD164
     X   , DD163, DD162, DD161, DD160, DD159, DD158, DD157, DD156, DD155
     X   , DD154, DD153, DD152, DD151, DD150, DD149, DD148, DD147, DD146
     X   , DD145, DD144, DD143, DD142, DD141, DD140
       DOUBLE PRECISION DD139, DD138, DD137, DD136, DD135, DD134, DD133
     X   , DD132, DD131, DD130, DD129, DD128, DD127, DD126, DD125, DD124
     X   , DD123, DD122, DD121, DD120, DD119, DD118, DD117, DD116, DD115
     X   , DD114, DD113, DD112, DD111, DD110, DD109, DD108, DD107, DD106
     X   , DD105, DD104, DD103, DD102, DD101, DD100
       DOUBLE PRECISION DD99, DD98, DD97, DD96, DD95, DD94, DD93, DD92, 
     X   DD91, DD90, DD89, DD88, DD87, DD86, DD85, DD84, DD83, DD82, 
     X   DD81, DD80, DD79, DD78, DD77, DD76, DD75, DD74, DD73, DD72, 
     X   DD71, DD70, DD69, DD68, DD67, DD66, DD65, DD64, DD63, DD62, 
     X   DD61, DD60
       DOUBLE PRECISION DD59, DD58, DD57, DD56, DD55, DD54, DD53, DD52, 
     X   DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, DD42, 
     X   DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, DD32, 
     X   DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, 
     X   DD21, DD20
       DOUBLE PRECISION DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, 
     X   DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO I=1,10
        IF (LA(I)) THEN
         A(I) = B(I) + C(I)
         QA(I) = QC(I)
        END IF

        IF (LB(I)) THEN
         A(I) = B(I) * C(I)
         QA(I) = QB(I)
        ELSE
         A(I) = B(I) / C(I)
         QA(I) = QD(I)
        END IF

        IF (LC(I)) THEN
        ELSE
         IF (LD(I)) THEN
          A(I) = B(I) ** C(I)
         END IF
        END IF
       END DO

       DO I=1,10
        IF (.NOT.LA(I)) THEN
         A(I) = SQRT (B(I) + D(I))
         QA(I) = QB(I)
        END IF
        IF (LB(I)) THEN
         A(I) = B(I) * SIN (D(I)) + QA(I) * QC(I)
        END IF
       END DO
       WRITE (6, *) A, QA

       DO I=1,10
        IF (L1A(I)) THEN
         A(I) = B(I) + C(I)
         D(I) = A(I) * C(I)
         IF (L1B(I)) THEN
         ELSE
          A(I) = B(I) ** D(I)
         END IF
        ELSE
         A(I) = B(I) + C(I)
         IF (L1C(I)) THEN
         ELSE
          IF (L1A(I)) THEN
           A(I) = B(I) * C(I) ** D(I)
          END IF
         END IF
        END IF
       END DO
       WRITE (6, *) A

       DO I=1,10
        IF (L1A(I)) THEN
         IF (B(I) * C(I) .GT. 1.2D0) THEN
          A(I) = I ** B(I)
         ELSE
          IF (A(I) .EQ. B(I) / C(I)) THEN
           A(I) = A(I) ** C(I) / D(I)
           QA(I) = QB(I) + QC(I)
          END IF
         END IF
        END IF
        IF (LA(I) .OR. L1D(I) .OR. A(I) .GT. 0) THEN
         A(I) = A(I) + SQRT (B(I))
        END IF
        IF (.NOT.LB(I) .AND. (LA(I) .OR. .NOT.L1C(I))) THEN
         A(I) = D(I) + SIN (B(I))
         QA(I) = QA(I) ** I
        END IF
       END DO
       WRITE (6, *) A, QA
                                                                        

       IF (L1C(5)) THEN

        IF (LB(5)) THEN
         IF (LA(5)) THEN
          DO J=1,6,5
           DD115 = B(J) ** C(J)
           DD116 = B(J+1) ** C(J+1)
           DD117 = B(J+2) ** C(J+2)
           DD118 = B(J+3) ** C(J+3)
           DD119 = B(J+4) ** C(J+4)
           DD120 = DD115
           DD121 = DD116
           DD122 = DD117
           DD123 = DD118
           DD124 = DD119
           DD115 = B(J) - C(J)
           DD116 = B(J+1) - C(J+1)
           DD117 = B(J+2) - C(J+2)
           DD118 = B(J+3) - C(J+3)
           DD119 = B(J+4) - C(J+4)
           A(J+4) = DD119
           A(J+3) = DD118
           A(J+2) = DD117
           A(J+1) = DD116
           A(J) = DD115
           QA(J+4) = DD124
           QA(J+3) = DD123
           QA(J+2) = DD122
           QA(J+1) = DD121
           QA(J) = DD120
          END DO
         ELSE
          DO J=1,6,5
           DD125 = B(J) ** C(J)
           DD126 = B(J+1) ** C(J+1)
           DD127 = B(J+2) ** C(J+2)
           DD128 = B(J+3) ** C(J+3)
           DD129 = B(J+4) ** C(J+4)
           QA(J) = DD125
           QA(J+1) = DD126
           QA(J+2) = DD127
           QA(J+3) = DD128
           QA(J+4) = DD129
           DD125 = B(J) - C(J)
           DD126 = B(J+1) - C(J+1)
           DD127 = B(J+2) - C(J+2)
           DD128 = B(J+3) - C(J+3)
           DD129 = B(J+4) - C(J+4)
           A(J+4) = DD129
           A(J+3) = DD128
           A(J+2) = DD127
           A(J+1) = DD126
           A(J) = DD125
          END DO
         END IF
        ELSE
         IF (LA(5)) THEN
          DO J=1,6,5
           QA(J) = QB(J)
           QA(J+1) = QB(J+1)
           QA(J+2) = QB(J+2)
           QA(J+3) = QB(J+3)
           QA(J+4) = QB(J+4)
           DD130 = B(J) - C(J)
           DD131 = B(J+1) - C(J+1)
           DD132 = B(J+2) - C(J+2)
           DD133 = B(J+3) - C(J+3)
           DD134 = B(J+4) - C(J+4)
           A(J+4) = DD134
           A(J+3) = DD133
           A(J+2) = DD132
           A(J+1) = DD131
           A(J) = DD130
          END DO
         ELSE
          DO J=1,6,5
           DD135 = B(J) - C(J)
           DD136 = B(J+1) - C(J+1)
           DD137 = B(J+2) - C(J+2)
           DD138 = B(J+3) - C(J+3)
           DD139 = B(J+4) - C(J+4)
           A(J+4) = DD139
           A(J+3) = DD138
           A(J+2) = DD137
           A(J+1) = DD136
           A(J) = DD135
          END DO
         END IF
        END IF
       ELSE

        IF (LB(5)) THEN
         IF (LA(5)) THEN
          IF (LD(5)) THEN
           DO J=1,6,5
            DD140 = B(J) ** C(J)
            DD141 = B(J+1) ** C(J+1)
            DD142 = B(J+2) ** C(J+2)
            DD143 = B(J+3) ** C(J+3)
            DD144 = B(J+4) ** C(J+4)
            QA(J) = 5D0
            QA(J+1) = 5D0
            QA(J+2) = 5D0
            QA(J+3) = 5D0
            QA(J+4) = 5D0
            A(J+4) = DD144
            A(J+3) = DD143
            A(J+2) = DD142
            A(J+1) = DD141
            A(J) = DD140
           END DO
          ELSE
           DO J=1,6,5
            DD145 = B(J) ** C(J)
            DD146 = B(J+1) ** C(J+1)
            DD147 = B(J+2) ** C(J+2)
            DD148 = B(J+3) ** C(J+3)
            DD149 = B(J+4) ** C(J+4)
            DD150 = DD145
            DD151 = DD146
            DD152 = DD147
            DD153 = DD148
            DD154 = DD149
            QA(J+4) = DD154
            QA(J+3) = DD153
            QA(J+2) = DD152
            QA(J+1) = DD151
            QA(J) = DD150
            A(J+4) = DD149
            A(J+3) = DD148
            A(J+2) = DD147
            A(J+1) = DD146
            A(J) = DD145
           END DO
          END IF
         ELSE
          IF (LD(5)) THEN
           DO J=1,6,5
            DD155 = B(J) ** C(J)
            DD156 = B(J+1) ** C(J+1)
            DD157 = B(J+2) ** C(J+2)
            DD158 = B(J+3) ** C(J+3)
            DD159 = B(J+4) ** C(J+4)
            QA(J) = 5D0
            QA(J+1) = 5D0
            QA(J+2) = 5D0
            QA(J+3) = 5D0
            QA(J+4) = 5D0
            A(J+4) = DD159
            A(J+3) = DD158
            A(J+2) = DD157
            A(J+1) = DD156
            A(J) = DD155
           END DO
          ELSE
           DO J=1,6,5
            DD160 = B(J) ** C(J)
            DD161 = B(J+1) ** C(J+1)
            DD162 = B(J+2) ** C(J+2)
            DD163 = B(J+3) ** C(J+3)
            DD164 = B(J+4) ** C(J+4)
            QA(J) = DD160
            QA(J+1) = DD161
            QA(J+2) = DD162
            QA(J+3) = DD163
            QA(J+4) = DD164
            A(J+4) = DD164
            A(J+3) = DD163
            A(J+2) = DD162
            A(J+1) = DD161
            A(J) = DD160
           END DO
          END IF
         END IF
        ELSE
         IF (LA(5)) THEN
          IF (LD(5)) THEN
           DO J=1,6,5
            DD165 = B(J) ** C(J)
            DD166 = B(J+1) ** C(J+1)
            DD167 = B(J+2) ** C(J+2)
            DD168 = B(J+3) ** C(J+3)
            DD169 = B(J+4) ** C(J+4)
            QA(J) = 5D0
            QA(J+1) = 5D0
            QA(J+2) = 5D0
            QA(J+3) = 5D0
            QA(J+4) = 5D0
            A(J+4) = DD169
            A(J+3) = DD168
            A(J+2) = DD167
            A(J+1) = DD166
            A(J) = DD165
           END DO
          ELSE
           DO J=1,6,5
            DD170 = B(J) + C(J)
            DD171 = B(J+1) + C(J+1)
            DD172 = B(J+2) + C(J+2)
            DD173 = B(J+3) + C(J+3)
            DD174 = B(J+4) + C(J+4)
            QA(J) = QB(J)
            QA(J+1) = QB(J+1)
            QA(J+2) = QB(J+2)
            QA(J+3) = QB(J+3)
            QA(J+4) = QB(J+4)
            DD27 = B(J) / C(J)
            DD28 = B(J+1) / C(J+1)
            DD29 = B(J+2) / C(J+2)
            DD30 = B(J+3) / C(J+3)
            DD6 = B(J+4) / C(J+4)
            DD31 = SQRT (DD170)
            DD32 = SQRT (DD171)
            DD33 = SQRT (DD172)
            DD34 = SQRT (DD173)
            DD7 = SQRT (DD174)
            DD35 = DD27 + DD31
            DD36 = DD28 + DD32
            DD37 = DD29 + DD33
            DD38 = DD30 + DD34
            DD5 = DD6 + DD7
            DD170 = DD35 + QB(J)
            DD171 = DD36 + QB(J+1)
            DD172 = DD37 + QB(J+2)
            DD173 = DD38 + QB(J+3)
            DD174 = DD5 + QB(J+4)
            A(J+4) = DD174
            A(J+3) = DD173
            A(J+2) = DD172
            A(J+1) = DD171
            A(J) = DD170
           END DO
          END IF
         ELSE
          IF (LD(5)) THEN
           DO J=1,6,5
            DD175 = B(J) ** C(J)
            DD176 = B(J+1) ** C(J+1)
            DD177 = B(J+2) ** C(J+2)
            DD178 = B(J+3) ** C(J+3)
            DD179 = B(J+4) ** C(J+4)
            QA(J) = 5D0
            QA(J+1) = 5D0
            QA(J+2) = 5D0
            QA(J+3) = 5D0
            QA(J+4) = 5D0
            A(J+4) = DD179
            A(J+3) = DD178
            A(J+2) = DD177
            A(J+1) = DD176
            A(J) = DD175
           END DO
          ELSE
           DO J=1,6,5
            DD39 = B(J) / C(J)
            DD40 = B(J+1) / C(J+1)
            DD41 = B(J+2) / C(J+2)
            DD42 = B(J+3) / C(J+3)
            DD9 = B(J+4) / C(J+4)
            DD43 = SQRT (A(J))
            DD44 = SQRT (A(J+1))
            DD45 = SQRT (A(J+2))
            DD46 = SQRT (A(J+3))
            DD10 = SQRT (A(J+4))
            DD47 = DD39 + DD43
            DD48 = DD40 + DD44
            DD49 = DD41 + DD45
            DD50 = DD42 + DD46
            DD8 = DD9 + DD10
            DD180 = DD47 + QB(J)
            DD181 = DD48 + QB(J+1)
            DD182 = DD49 + QB(J+2)
            DD183 = DD50 + QB(J+3)
            DD184 = DD8 + QB(J+4)
            A(J+4) = DD184
            A(J+3) = DD183
            A(J+2) = DD182
            A(J+1) = DD181
            A(J) = DD180
           END DO
          END IF
         END IF
        END IF
       END IF
       WRITE (6, *) A, QA
       IF (.NOT.LC(5)) THEN
        IF (.NOT.L1A(5)) THEN
         IF (L1B(5)) THEN
          DD1 = B(5)

          DO J=1,6,5
           DD51 = D(J) ** 5
           DD52 = D(J+1) ** 5
           DD53 = D(J+2) ** 5
           DD54 = D(J+3) ** 5
           DD12 = D(J+4) ** 5
           DD55 = B(J) * DD51
           DD56 = B(J+1) * DD52
           DD57 = B(J+2) * DD53
           DD58 = B(J+3) * DD54
           DD11 = B(J+4) * DD12
           DD185 = QA(J) + DD55
           DD186 = QA(J+1) + DD56
           DD187 = QA(J+2) + DD57
           DD188 = QA(J+3) + DD58
           DD189 = QA(J+4) + DD11
           DD51 = B(J) - D(J)
           DD52 = B(J+1) - D(J+1)
           DD53 = B(J+2) - D(J+2)
           DD54 = B(J+3) - D(J+3)
           DD12 = B(J+4) - D(J+4)
           DD55 = DD51 + DD1
           DD56 = DD52 + DD1
           DD57 = DD53 + DD1
           DD58 = DD54 + DD1
           DD11 = DD12 + DD1
           DD59 = DD185 ** 5
           DD60 = DD186 ** 5
           DD61 = DD187 ** 5
           DD62 = DD188 ** 5
           DD13 = DD189 ** 5
           DD185 = DD55 + DD59
           DD186 = DD56 + DD60
           DD187 = DD57 + DD61
           DD188 = DD58 + DD62
           DD189 = DD11 + DD13
           DD190 = QB(J)
           DD191 = QB(J+1)
           DD192 = QB(J+2)
           DD193 = QB(J+3)
           DD194 = QB(J+4)
           QA(J+4) = DD194
           QA(J+3) = DD193
           QA(J+2) = DD192
           QA(J+1) = DD191
           QA(J) = DD190
           A(J+4) = DD189
           A(J+3) = DD188
           A(J+2) = DD187
           A(J+1) = DD186
           A(J) = DD185
          END DO
         ELSE
          DD2 = B(5)
          DO J=1,6,5
           DD195 = B(J) + D(J)
           DD196 = B(J+1) + D(J+1)
           DD197 = B(J+2) + D(J+2)
           DD198 = B(J+3) + D(J+3)
           DD199 = B(J+4) + D(J+4)
           DD63 = B(J) - D(J)
           DD64 = B(J+1) - D(J+1)
           DD65 = B(J+2) - D(J+2)
           DD66 = B(J+3) - D(J+3)
           DD15 = B(J+4) - D(J+4)
           DD67 = DD63 + DD2
           DD68 = DD64 + DD2
           DD69 = DD65 + DD2
           DD70 = DD66 + DD2
           DD14 = DD15 + DD2
           DD71 = DD195 ** 5
           DD72 = DD196 ** 5
           DD73 = DD197 ** 5
           DD74 = DD198 ** 5
           DD16 = DD199 ** 5
           DD195 = DD67 + DD71
           DD196 = DD68 + DD72
           DD197 = DD69 + DD73
           DD198 = DD70 + DD74
           DD199 = DD14 + DD16
           QA(J) = QB(J)
           QA(J+1) = QB(J+1)
           QA(J+2) = QB(J+2)
           QA(J+3) = QB(J+3)
           QA(J+4) = QB(J+4)
           A(J+4) = DD199
           A(J+3) = DD198
           A(J+2) = DD197
           A(J+1) = DD196
           A(J) = DD195
          END DO
         END IF
        ELSE
         IF (L1B(5)) THEN
          DD3 = B(5)
          DO J=1,6,5
           DD75 = D(J) ** 5
           DD76 = D(J+1) ** 5
           DD77 = D(J+2) ** 5
           DD78 = D(J+3) ** 5
           DD18 = D(J+4) ** 5
           DD79 = B(J) * DD75
           DD80 = B(J+1) * DD76
           DD81 = B(J+2) * DD77
           DD82 = B(J+3) * DD78
           DD17 = B(J+4) * DD18
           DD201 = QA(J) + DD79
           DD203 = QA(J+1) + DD80
           DD205 = QA(J+2) + DD81
           DD207 = QA(J+3) + DD82
           DD209 = QA(J+4) + DD17
           DD75 = B(J) - D(J)
           DD76 = B(J+1) - D(J+1)
           DD77 = B(J+2) - D(J+2)
           DD78 = B(J+3) - D(J+3)
           DD18 = B(J+4) - D(J+4)
           DD79 = DD75 + DD3
           DD80 = DD76 + DD3
           DD81 = DD77 + DD3
           DD82 = DD78 + DD3
           DD17 = DD18 + DD3
           DD83 = DD201 ** 5
           DD84 = DD203 ** 5
           DD85 = DD205 ** 5
           DD86 = DD207 ** 5
           DD19 = DD209 ** 5
           DD201 = DD79 + DD83
           DD203 = DD80 + DD84
           DD205 = DD81 + DD85
           DD207 = DD82 + DD86
           DD209 = DD17 + DD19
           DD200 = QB(J)
           DD202 = QB(J+1)
           DD204 = QB(J+2)
           DD206 = QB(J+3)
           DD208 = QB(J+4)
           QA(J+4) = DD208
           QA(J+3) = DD206
           QA(J+2) = DD204
           QA(J+1) = DD202
           QA(J) = DD200
           A(J+4) = DD209
           A(J+3) = DD207
           A(J+2) = DD205
           A(J+1) = DD203
           A(J) = DD201
          END DO
         ELSE
          DD4 = B(5)
          DO J=1,6,5
           DD87 = B(J) - D(J)
           DD88 = B(J+1) - D(J+1)
           DD89 = B(J+2) - D(J+2)
           DD90 = B(J+3) - D(J+3)
           DD21 = B(J+4) - D(J+4)
           DD91 = DD87 + DD4
           DD92 = DD88 + DD4
           DD93 = DD89 + DD4
           DD94 = DD90 + DD4
           DD20 = DD21 + DD4
           DD95 = A(J) ** 5
           DD96 = A(J+1) ** 5
           DD97 = A(J+2) ** 5
           DD98 = A(J+3) ** 5
           DD22 = A(J+4) ** 5
           DD210 = DD91 + DD95
           DD211 = DD92 + DD96
           DD212 = DD93 + DD97
           DD213 = DD94 + DD98
           DD214 = DD20 + DD22
           QA(J) = QB(J)
           QA(J+1) = QB(J+1)
           QA(J+2) = QB(J+2)
           QA(J+3) = QB(J+3)
           QA(J+4) = QB(J+4)
           A(J+4) = DD214
           A(J+3) = DD213
           A(J+2) = DD212
           A(J+1) = DD211
           A(J) = DD210
          END DO
         END IF
        END IF
       ELSE
        IF (.NOT.L1A(5)) THEN
         IF (L1B(5)) THEN
          DO J=1,6,5
           DD99 = D(J) ** 5
           DD100 = D(J+1) ** 5
           DD101 = D(J+2) ** 5
           DD102 = D(J+3) ** 5
           DD24 = D(J+4) ** 5
           DD103 = B(J) * DD99
           DD104 = B(J+1) * DD100
           DD105 = B(J+2) * DD101
           DD106 = B(J+3) * DD102
           DD23 = B(J+4) * DD24
           DD215 = QA(J) + DD103
           DD216 = QA(J+1) + DD104
           DD217 = QA(J+2) + DD105
           DD218 = QA(J+3) + DD106
           DD219 = QA(J+4) + DD23
           A(J+4) = DD219
           A(J+3) = DD218
           A(J+2) = DD217
           A(J+1) = DD216
           A(J) = DD215
          END DO
         ELSE
          DO J=1,6,5
           A(J) = B(J) + D(J)
           A(J+1) = B(J+1) + D(J+1)
           A(J+2) = B(J+2) + D(J+2)
           A(J+3) = B(J+3) + D(J+3)
           A(J+4) = B(J+4) + D(J+4)
          END DO
         END IF
        ELSE
         IF (L1B(5)) THEN
          DO J=1,6,5
           DD107 = D(J) ** 5
           DD108 = D(J+1) ** 5
           DD109 = D(J+2) ** 5
           DD110 = D(J+3) ** 5
           DD26 = D(J+4) ** 5
           DD111 = B(J) * DD107
           DD112 = B(J+1) * DD108
           DD113 = B(J+2) * DD109
           DD114 = B(J+3) * DD110
           DD25 = B(J+4) * DD26
           A(J) = QA(J) + DD111
           A(J+1) = QA(J+1) + DD112
           A(J+2) = QA(J+2) + DD113
           A(J+3) = QA(J+3) + DD114
           A(J+4) = QA(J+4) + DD25
          END DO
         END IF
        END IF
       END IF
       WRITE (6, *) A, QA
       STOP 
      END
 
 
 
 
 
 
 
 
 
 
