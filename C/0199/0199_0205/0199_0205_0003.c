#include <stdlib.h>
signed int v1 (signed short, signed char, signed char);
signed int (*v2) (signed short, signed char, signed char) = v1;
extern signed short v3 (signed char, unsigned int);
extern signed short (*v4) (signed char, unsigned int);
extern void v5 (unsigned short, signed short);
extern void (*v6) (unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned short, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned short, unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (unsigned int, signed char, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short);
signed char v29 (unsigned int, signed short, unsigned short);
signed char (*v30) (unsigned int, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 6;
signed short v86 = 3;
signed int v85 = 1;

signed char v29 (unsigned int v88, signed short v89, unsigned short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 2U;
unsigned char v92 = 6;
signed char v91 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed short v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 3;
unsigned int v96 = 7U;
signed int v95 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v98, signed char v99, signed char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 6;
signed short v102 = 2;
signed char v101 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v104;
unsigned short v105;
unsigned char v106;
unsigned char v107;
v104 = 1U - 1U;
v105 = 0 + 0;
v106 = v103 + 6;
v107 = v11 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 2: 
{
unsigned short v108;
signed short v109;
v108 = 2 - 1;
v109 = v98 + v102;
v5 (v108, v109);
}
break;
case 8: 
{
unsigned char v110;
unsigned int v111;
v110 = v103 + v103;
v111 = v15 (v110);
history[history_index++] = (int)v111;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
