#include <stdlib.h>
extern signed short v1 (signed short, unsigned char, unsigned char);
extern signed short (*v2) (signed short, unsigned char, unsigned char);
extern signed char v3 (unsigned char, signed short, unsigned char);
extern signed char (*v4) (unsigned char, signed short, unsigned char);
unsigned short v5 (unsigned char, unsigned short, unsigned char);
unsigned short (*v6) (unsigned char, unsigned short, unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (unsigned int, signed int, signed char, unsigned int);
extern signed int (*v10) (unsigned int, signed int, signed char, unsigned int);
extern unsigned char v11 (signed short, signed int, unsigned short);
extern unsigned char (*v12) (signed short, signed int, unsigned short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern void v15 (signed short, unsigned int, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned char, unsigned char);
extern signed int v17 (unsigned int, signed short, unsigned char, unsigned char);
extern signed int (*v18) (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned short v19 (unsigned int, unsigned short, signed char, signed short);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char, signed short);
extern signed short v21 (unsigned short, signed char, unsigned int, signed char);
extern signed short (*v22) (unsigned short, signed char, unsigned int, signed char);
unsigned int v23 (signed int, unsigned short, unsigned char);
unsigned int (*v24) (signed int, unsigned short, unsigned char) = v23;
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
signed int v27 (unsigned short, unsigned char, signed short, unsigned short);
signed int (*v28) (unsigned short, unsigned char, signed short, unsigned short) = v27;
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 4U;
signed char v97 = 2;
unsigned int v96 = 0U;

signed int v27 (unsigned short v99, unsigned char v100, signed short v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -3;
unsigned int v104 = 1U;
signed int v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed int v106, unsigned short v107, unsigned char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 3;
signed char v110 = 0;
unsigned short v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v112, unsigned short v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -3;
signed char v116 = -4;
unsigned int v115 = 2U;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v118;
signed int v119;
v118 = v112 + v112;
v119 = v13 (v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return v113;
default: abort ();
}
}
}
}
