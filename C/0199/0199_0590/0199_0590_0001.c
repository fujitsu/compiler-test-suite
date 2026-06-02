#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
unsigned int v5 (signed int, unsigned int, signed int, unsigned short);
unsigned int (*v6) (signed int, unsigned int, signed int, unsigned short) = v5;
signed char v7 (signed short);
signed char (*v8) (signed short) = v7;
extern void v9 (signed short, signed short, signed char, signed int);
extern void (*v10) (signed short, signed short, signed char, signed int);
extern signed char v11 (unsigned int, unsigned int, signed char);
extern signed char (*v12) (unsigned int, unsigned int, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v15 (signed int, signed char);
extern unsigned char (*v16) (signed int, signed char);
extern signed char v17 (signed char, unsigned short);
extern signed char (*v18) (signed char, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed int, signed short);
extern signed short (*v22) (signed int, signed short);
extern unsigned char v23 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v24) (signed char, unsigned int, unsigned short, signed short);
void v25 (void);
void (*v26) (void) = v25;
extern signed short v27 (signed int, signed short, signed char, unsigned int);
extern signed short (*v28) (signed int, signed short, signed char, unsigned int);
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 6U;
unsigned int v49 = 4U;
signed char v48 = -2;

void v25 (void)
{
{
for (;;) {
unsigned int v53 = 3U;
signed short v52 = -2;
signed short v51 = -3;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v54;
unsigned int v55;
signed char v56;
signed char v57;
v54 = 2U + v53;
v55 = v53 - v53;
v56 = 1 - 3;
v57 = v11 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 9: 
{
unsigned int v58;
unsigned int v59;
signed char v60;
signed char v61;
v58 = 7U + v53;
v59 = v53 - v53;
v60 = -2 + 0;
v61 = v11 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v7 (signed short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 4U;
signed short v64 = 3;
signed int v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v66, unsigned int v67, signed int v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 7U;
unsigned short v71 = 4;
unsigned short v70 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
