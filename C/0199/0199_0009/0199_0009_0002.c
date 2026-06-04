#include <stdlib.h>
unsigned short v1 (unsigned short, signed char, signed char);
unsigned short (*v2) (unsigned short, signed char, signed char) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
extern unsigned short v11 (unsigned char, signed int, signed char);
extern unsigned short (*v12) (unsigned char, signed int, signed char);
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned short, signed short, signed int, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
unsigned short v21 (signed char, signed int, unsigned short, signed char);
unsigned short (*v22) (signed char, signed int, unsigned short, signed char) = v21;
extern unsigned short v23 (unsigned char, signed int, signed char);
extern unsigned short (*v24) (unsigned char, signed int, signed char);
extern signed char v25 (unsigned char, signed char, unsigned int, signed char);
extern signed char (*v26) (unsigned char, signed char, unsigned int, signed char);
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
extern unsigned char v29 (signed char, unsigned int, signed char);
extern unsigned char (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v84 = -1;
unsigned char v83 = 7;
signed char v82 = 1;

unsigned short v21 (signed char v85, signed int v86, unsigned short v87, signed char v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 6U;
unsigned int v90 = 6U;
unsigned int v89 = 2U;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v92;
signed char v93;
unsigned int v94;
signed char v95;
signed char v96;
v92 = 1 + 7;
v93 = v88 - v85;
v94 = v90 + v89;
v95 = v85 + v88;
v96 = v25 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return v87;
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned short v99 = 2;
unsigned char v98 = 4;
unsigned int v97 = 6U;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v100;
v100 = v15 ();
history[history_index++] = (int)v100;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -4;
signed short v103 = -1;
unsigned int v102 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v105, signed char v106, signed char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 4;
signed int v109 = 0;
signed char v108 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v111;
unsigned int v112;
v111 = -2 + 1;
v112 = v3 (v111);
history[history_index++] = (int)v112;
}
break;
case 2: 
{
signed short v113;
unsigned int v114;
v113 = 0 - 1;
v114 = v3 (v113);
history[history_index++] = (int)v114;
}
break;
case 16: 
return v105;
default: abort ();
}
}
}
}
