#include <stdlib.h>
signed short v1 (signed char);
signed short (*v2) (signed char) = v1;
extern signed int v5 (signed short, signed int, unsigned short);
extern signed int (*v6) (signed short, signed int, unsigned short);
extern signed char v7 (signed char, unsigned int);
extern signed char (*v8) (signed char, unsigned int);
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
signed short v19 (signed char);
signed short (*v20) (signed char) = v19;
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
unsigned char v23 (unsigned char, unsigned char);
unsigned char (*v24) (unsigned char, unsigned char) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = -1;
signed char v82 = 0;
signed short v81 = 0;

unsigned char v23 (unsigned char v84, unsigned char v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 4;
unsigned int v87 = 1U;
signed int v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -1;
signed int v91 = 3;
unsigned char v90 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 3U;
unsigned int v95 = 3U;
signed short v94 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v97;
unsigned int v98;
signed char v99;
v97 = -3 - v93;
v98 = v96 + 1U;
v99 = v7 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 18: 
return v94;
default: abort ();
}
}
}
}
