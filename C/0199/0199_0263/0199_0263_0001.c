#include <stdlib.h>
void v1 (unsigned short, unsigned char, unsigned char, signed int);
void (*v2) (unsigned short, unsigned char, unsigned char, signed int) = v1;
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed int v11 (signed short, signed char);
signed int (*v12) (signed short, signed char) = v11;
extern signed int v13 (signed char, unsigned char);
extern signed int (*v14) (signed char, unsigned char);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned int v19 (signed int, unsigned int, signed short);
extern unsigned int (*v20) (signed int, unsigned int, signed short);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern unsigned short v23 (signed short, signed int, signed char);
extern unsigned short (*v24) (signed short, signed int, signed char);
extern unsigned char v25 (signed int, unsigned char);
extern unsigned char (*v26) (signed int, unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = -4;
unsigned int v63 = 3U;
signed char v62 = -3;

unsigned short v21 (signed char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 6U;
unsigned short v67 = 4;
signed short v66 = 2;
trace++;
switch (trace)
{
case 4: 
return v67;
default: abort ();
}
}
}
}

signed int v11 (signed short v69, signed char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 1;
signed char v72 = -3;
signed char v71 = -2;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v74;
signed char v75;
v74 = 6U + 1U;
v75 = v17 (v74);
history[history_index++] = (int)v75;
}
break;
case 12: 
return v73;
default: abort ();
}
}
}
}

void v1 (unsigned short v76, unsigned char v77, unsigned char v78, signed int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 3;
signed char v81 = -1;
unsigned int v80 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v83;
signed char v84;
v83 = v80 - 2U;
v84 = v17 (v83);
history[history_index++] = (int)v84;
}
break;
case 6: 
{
unsigned int v85;
v85 = v7 ();
history[history_index++] = (int)v85;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
