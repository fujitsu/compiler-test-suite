#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (unsigned char, signed char, signed int, signed int);
signed short (*v6) (unsigned char, signed char, signed int, signed int) = v5;
extern signed int v7 (signed short, unsigned short, signed short, signed char);
extern signed int (*v8) (signed short, unsigned short, signed short, signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed int, signed short, unsigned short, signed short);
extern unsigned int (*v12) (signed int, signed short, unsigned short, signed short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed char v15 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v16) (unsigned int, signed short, unsigned char, signed char);
signed int v17 (signed short, unsigned short, unsigned short, signed short);
signed int (*v18) (signed short, unsigned short, unsigned short, signed short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed char, signed char, signed short);
extern void (*v22) (signed char, signed char, signed short);
signed short v23 (unsigned char, unsigned char, signed short);
signed short (*v24) (unsigned char, unsigned char, signed short) = v23;
extern unsigned int v25 (signed int, signed char, unsigned char, unsigned short);
extern unsigned int (*v26) (signed int, signed char, unsigned char, unsigned short);
extern signed char v27 (unsigned short, unsigned char);
extern signed char (*v28) (unsigned short, unsigned char);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = 1;
signed short v85 = -3;
unsigned char v84 = 1;

signed short v23 (unsigned char v87, unsigned char v88, signed short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 3;
signed short v91 = -3;
unsigned short v90 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed int v93;
signed char v94;
unsigned char v95;
unsigned short v96;
unsigned int v97;
v93 = 3 - 3;
v94 = 3 - 3;
v95 = v88 + 1;
v96 = 3 + 0;
v97 = v25 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 9: 
return v91;
case 11: 
return v91;
default: abort ();
}
}
}
}

signed int v17 (signed short v98, unsigned short v99, unsigned short v100, signed short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -2;
unsigned char v103 = 7;
unsigned int v102 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v105, signed char v106, signed int v107, signed int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 0;
signed char v110 = 1;
signed char v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
