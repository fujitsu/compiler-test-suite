#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
signed int v9 (unsigned short, signed int, signed short, unsigned int);
signed int (*v10) (unsigned short, signed int, signed short, unsigned int) = v9;
signed char v11 (signed char);
signed char (*v12) (signed char) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (signed char, unsigned int, signed int);
extern signed char (*v16) (signed char, unsigned int, signed int);
extern signed short v17 (signed short, signed short, unsigned char);
extern signed short (*v18) (signed short, signed short, unsigned char);
extern unsigned char v19 (unsigned char, signed char);
extern unsigned char (*v20) (unsigned char, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed char v23 (signed int, unsigned int, signed char);
extern signed char (*v24) (signed int, unsigned int, signed char);
void v25 (unsigned int, signed short, unsigned char);
void (*v26) (unsigned int, signed short, unsigned char) = v25;
extern signed short v29 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v30) (signed char, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = -3;
signed char v81 = 1;
signed short v80 = 3;

void v25 (unsigned int v83, signed short v84, unsigned char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 4;
unsigned short v87 = 0;
unsigned char v86 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed char v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = -4;
unsigned char v91 = 1;
signed int v90 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed char v93;
unsigned int v94;
signed int v95;
signed char v96;
v93 = v89 - -1;
v94 = 4U - 3U;
v95 = v92 - v90;
v96 = v15 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 13: 
return v89;
default: abort ();
}
}
}
}

signed int v9 (unsigned short v97, signed int v98, signed short v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 2;
unsigned int v102 = 3U;
signed short v101 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
