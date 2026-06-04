#include <stdlib.h>
extern signed short v1 (signed short, signed short, unsigned char);
extern signed short (*v2) (signed short, signed short, unsigned char);
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
extern unsigned short v5 (unsigned int, signed int, unsigned char);
extern unsigned short (*v6) (unsigned int, signed int, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
signed int v17 (unsigned int, unsigned short, unsigned int);
signed int (*v18) (unsigned int, unsigned short, unsigned int) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned short v21 (signed int, signed char, signed int);
extern unsigned short (*v22) (signed int, signed char, signed int);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed short v25 (signed char, unsigned short, unsigned char);
extern signed short (*v26) (signed char, unsigned short, unsigned char);
extern void v27 (signed int, signed short, signed short);
extern void (*v28) (signed int, signed short, signed short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v88 = 2;
unsigned short v87 = 0;
signed int v86 = -3;

signed short v29 (void)
{
{
for (;;) {
unsigned short v91 = 3;
signed int v90 = 0;
signed int v89 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v92;
signed short v93;
v92 = 4U + 3U;
v93 = v9 (v92);
history[history_index++] = (int)v93;
}
break;
case 4: 
{
unsigned int v94;
signed short v95;
v94 = 0U - 4U;
v95 = v9 (v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
unsigned int v96;
signed short v97;
v96 = 3U - 7U;
v97 = v9 (v96);
history[history_index++] = (int)v97;
}
break;
case 8: 
return 2;
case 10: 
{
unsigned int v98;
signed short v99;
v98 = 0U - 7U;
v99 = v9 (v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return 3;
case 14: 
return -4;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned char v102 = 2;
signed char v101 = 3;
unsigned int v100 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v103, unsigned short v104, unsigned int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = -3;
signed short v107 = -3;
signed int v106 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
