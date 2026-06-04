#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (signed int, signed char);
extern unsigned short (*v4) (signed int, signed char);
void v5 (signed char);
void (*v6) (signed char) = v5;
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
extern signed int v9 (unsigned char, unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned char, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned int v13 (signed short, signed int, signed int, signed int);
unsigned int (*v14) (signed short, signed int, signed int, signed int) = v13;
extern unsigned char v15 (signed int, unsigned char);
extern unsigned char (*v16) (signed int, unsigned char);
unsigned short v17 (signed short, signed int, signed char);
unsigned short (*v18) (signed short, signed int, signed char) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed int v23 (unsigned int, signed char);
extern signed int (*v24) (unsigned int, signed char);
unsigned short v25 (unsigned int, unsigned int, unsigned int, signed char);
unsigned short (*v26) (unsigned int, unsigned int, unsigned int, signed char) = v25;
extern signed int v27 (signed char, signed int, unsigned short);
extern signed int (*v28) (signed char, signed int, unsigned short);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v74 = 1;
signed int v73 = -2;
signed int v72 = -4;

unsigned short v25 (unsigned int v75, unsigned int v76, unsigned int v77, signed char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -3;
unsigned char v80 = 2;
signed short v79 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed short v82, signed int v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 2;
unsigned int v86 = 1U;
signed char v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v88, signed int v89, signed int v90, signed int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -2;
signed char v93 = 3;
unsigned short v92 = 0;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v95;
signed char v96;
v95 = v92 + 0;
v96 = v21 (v95);
history[history_index++] = (int)v96;
}
break;
case 4: 
{
unsigned int v97;
signed char v98;
signed int v99;
v97 = 4U - 7U;
v98 = 2 - 1;
v99 = v23 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
{
unsigned int v100;
unsigned char v101;
v100 = 1U + 7U;
v101 = v29 (v100);
history[history_index++] = (int)v101;
}
break;
case 8: 
{
unsigned int v102;
signed char v103;
signed int v104;
v102 = 1U + 5U;
v103 = 3 - v93;
v104 = v23 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 10: 
{
unsigned int v105;
signed char v106;
signed int v107;
v105 = 5U + 7U;
v106 = -4 + v93;
v107 = v23 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

void v5 (signed char v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 2;
unsigned char v110 = 4;
unsigned char v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
