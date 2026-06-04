#include <stdlib.h>
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern void v5 (signed int, unsigned int, signed char);
extern void (*v6) (signed int, unsigned int, signed char);
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
unsigned int v9 (signed int, unsigned int, unsigned char);
unsigned int (*v10) (signed int, unsigned int, unsigned char) = v9;
signed short v11 (unsigned int, unsigned short, unsigned short);
signed short (*v12) (unsigned int, unsigned short, unsigned short) = v11;
extern unsigned short v13 (unsigned short, unsigned int);
extern unsigned short (*v14) (unsigned short, unsigned int);
extern signed short v15 (unsigned int, signed char, signed char);
extern signed short (*v16) (unsigned int, signed char, signed char);
extern signed short v17 (signed char, signed int, unsigned int, unsigned int);
extern signed short (*v18) (signed char, signed int, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (signed int, unsigned int, signed char);
extern signed int (*v22) (signed int, unsigned int, signed char);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern signed char v25 (unsigned char, signed char, unsigned int);
extern signed char (*v26) (unsigned char, signed char, unsigned int);
signed int v27 (signed char, signed char, unsigned short, signed short);
signed int (*v28) (signed char, signed char, unsigned short, signed short) = v27;
extern unsigned short v29 (unsigned char, signed int, signed char);
extern unsigned short (*v30) (unsigned char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = -3;
unsigned char v98 = 4;
unsigned char v97 = 3;

signed int v27 (signed char v100, signed char v101, unsigned short v102, signed short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
unsigned int v105 = 3U;
signed int v104 = -2;
trace++;
switch (trace)
{
case 4: 
return v104;
case 6: 
return 3;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v107, unsigned short v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 1;
signed short v111 = 3;
unsigned short v110 = 7;
trace++;
switch (trace)
{
case 9: 
return v111;
default: abort ();
}
}
}
}

unsigned int v9 (signed int v113, unsigned int v114, unsigned char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -2;
signed short v117 = 3;
signed short v116 = -4;
trace++;
switch (trace)
{
case 1: 
return v114;
default: abort ();
}
}
}
}
