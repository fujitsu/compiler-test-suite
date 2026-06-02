#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned char);
extern unsigned short (*v2) (signed short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
signed int v9 (unsigned char, signed short, unsigned short, signed int);
signed int (*v10) (unsigned char, signed short, unsigned short, signed int) = v9;
extern void v11 (unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
signed int v17 (unsigned int, signed char, signed char);
signed int (*v18) (unsigned int, signed char, signed char) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
unsigned short v21 (signed int, unsigned short, signed int);
unsigned short (*v22) (signed int, unsigned short, signed int) = v21;
extern unsigned int v23 (unsigned int, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, unsigned short, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned short, signed int, signed char);
extern void (*v28) (unsigned short, signed int, signed char);
extern unsigned char v29 (signed int, signed char, unsigned short);
extern unsigned char (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v94 = 3;
signed short v93 = -3;
signed char v92 = -1;

unsigned short v21 (signed int v95, unsigned short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 6U;
signed int v99 = -2;
unsigned char v98 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v101;
v101 = v25 ();
history[history_index++] = (int)v101;
}
break;
case 3: 
return v96;
case 5: 
{
signed int v102;
v102 = v25 ();
history[history_index++] = (int)v102;
}
break;
case 7: 
return 6;
case 11: 
return v96;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v103, signed char v104, signed char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = 0;
unsigned int v107 = 3U;
unsigned short v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v109, signed short v110, unsigned short v111, signed int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 0;
signed char v114 = 0;
unsigned char v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
