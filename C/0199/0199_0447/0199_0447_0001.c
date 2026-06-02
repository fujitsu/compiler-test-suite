#include <stdlib.h>
void v3 (unsigned short, unsigned short, unsigned short, unsigned char);
void (*v4) (unsigned short, unsigned short, unsigned short, unsigned char) = v3;
extern unsigned int v5 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned short, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (unsigned short, signed short, unsigned char, unsigned int);
extern signed short (*v10) (unsigned short, signed short, unsigned char, unsigned int);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
signed int v15 (signed short, unsigned int, signed char);
signed int (*v16) (signed short, unsigned int, signed char) = v15;
unsigned short v17 (unsigned short, unsigned short, unsigned short);
unsigned short (*v18) (unsigned short, unsigned short, unsigned short) = v17;
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned short v21 (unsigned short, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, unsigned short, signed char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v64 = 5U;
signed char v63 = 2;
signed char v62 = 3;

unsigned short v17 (unsigned short v65, unsigned short v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 1;
unsigned int v69 = 6U;
signed int v68 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v71;
unsigned int v72;
unsigned short v73;
unsigned short v74;
unsigned int v75;
v71 = 0U + 7U;
v72 = v69 + v69;
v73 = 5 + 6;
v74 = v67 - 0;
v75 = v5 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed int v15 (signed short v76, unsigned int v77, signed char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 3;
unsigned int v80 = 7U;
signed char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v82, unsigned short v83, unsigned short v84, unsigned char v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -2;
unsigned int v87 = 0U;
unsigned char v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
