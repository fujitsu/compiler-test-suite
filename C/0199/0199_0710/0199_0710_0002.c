#include <stdlib.h>
signed short v1 (signed short);
signed short (*v2) (signed short) = v1;
extern signed char v3 (unsigned int, signed int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, signed int, unsigned char, signed short);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (signed int, unsigned short, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, unsigned short);
extern signed short v15 (unsigned short, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned short, signed short, signed short, unsigned short);
extern signed short v17 (signed short, signed char);
extern signed short (*v18) (signed short, signed char);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
unsigned int v21 (signed short, unsigned char, signed short, unsigned int);
unsigned int (*v22) (signed short, unsigned char, signed short, unsigned int) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (unsigned short, unsigned short, signed short);
extern signed short (*v26) (unsigned short, unsigned short, signed short);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned char v29 (signed short, unsigned char);
extern unsigned char (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 7U;
signed int v91 = 1;
unsigned short v90 = 2;

unsigned int v21 (signed short v93, unsigned char v94, signed short v95, unsigned int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 0U;
unsigned char v98 = 1;
signed char v97 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 1U;
signed char v102 = 3;
unsigned short v101 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v104;
unsigned short v105;
unsigned int v106;
signed char v107;
v104 = 3 - -2;
v105 = 7 + 6;
v106 = 0U - v103;
v107 = v7 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 2: 
{
unsigned short v108;
signed short v109;
signed short v110;
unsigned short v111;
signed short v112;
v108 = 5 + v101;
v109 = v100 - 2;
v110 = v100 - 1;
v111 = 0 + 1;
v112 = v15 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
unsigned int v113;
unsigned short v114;
signed short v115;
v113 = 4U + 1U;
v114 = v101 + v101;
v115 = v13 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 6: 
{
unsigned char v116;
v116 = v23 ();
history[history_index++] = (int)v116;
}
break;
case 14: 
return -3;
case 16: 
return -3;
default: abort ();
}
}
}
}
