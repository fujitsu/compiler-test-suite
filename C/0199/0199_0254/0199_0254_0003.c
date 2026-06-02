#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed short v7 (signed int, unsigned char, signed short);
signed short (*v8) (signed int, unsigned char, signed short) = v7;
extern unsigned short v9 (unsigned short, unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, unsigned short, signed short);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
unsigned short v15 (unsigned int, unsigned char);
unsigned short (*v16) (unsigned int, unsigned char) = v15;
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed char v21 (unsigned int, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed char);
extern signed int v23 (signed char, signed int);
extern signed int (*v24) (signed char, signed int);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned int v27 (unsigned char, unsigned int, signed short, signed char);
extern unsigned int (*v28) (unsigned char, unsigned int, signed short, signed char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = -4;
unsigned char v95 = 3;
unsigned int v94 = 0U;

unsigned short v25 (void)
{
{
for (;;) {
signed int v99 = 0;
signed char v98 = -4;
unsigned char v97 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed char v100;
signed char v101;
v100 = -3 - 3;
v101 = -2 + v98;
v13 (v100, v101);
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v102, unsigned char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -1;
signed char v105 = 0;
unsigned int v104 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v107, unsigned char v108, signed short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 1;
unsigned int v111 = 2U;
signed int v110 = -2;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v113;
signed char v114;
unsigned int v115;
v113 = v111 - v111;
v114 = -4 + 3;
v115 = v11 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 16: 
return v112;
default: abort ();
}
}
}
}
