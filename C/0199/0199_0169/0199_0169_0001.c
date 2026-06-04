#include <stdlib.h>
extern void v1 (signed char, unsigned int, signed short, unsigned char);
extern void (*v2) (signed char, unsigned int, signed short, unsigned char);
signed char v3 (unsigned int, signed char, unsigned int);
signed char (*v4) (unsigned int, signed char, unsigned int) = v3;
extern unsigned int v5 (unsigned short, unsigned char, signed int, signed int);
extern unsigned int (*v6) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
void v9 (signed short, unsigned char, signed short);
void (*v10) (signed short, unsigned char, signed short) = v9;
unsigned short v11 (unsigned char, signed int, unsigned char, signed short);
unsigned short (*v12) (unsigned char, signed int, unsigned char, signed short) = v11;
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern unsigned char v15 (signed short, signed char, signed short);
extern unsigned char (*v16) (signed short, signed char, signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed int, signed int, signed short, unsigned short);
extern unsigned char (*v20) (signed int, signed int, signed short, unsigned short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned char, signed short, signed char, signed char);
extern unsigned int v29 (unsigned char, unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = -3;
unsigned char v52 = 4;
unsigned short v51 = 2;

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v56 = 0;
signed int v55 = -1;
unsigned short v54 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v57, signed int v58, unsigned char v59, signed short v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 3U;
signed short v62 = 3;
signed short v61 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v64;
unsigned int v65;
signed char v66;
signed short v67;
unsigned int v68;
v64 = 5 - v57;
v65 = 7U + v63;
v66 = -1 + 1;
v67 = 0 + v61;
v68 = v29 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 5: 
{
unsigned char v69;
unsigned int v70;
signed char v71;
signed short v72;
unsigned int v73;
v69 = 0 - 7;
v70 = 6U - v63;
v71 = -1 + -1;
v72 = v62 + 3;
v73 = v29 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 7: 
return 4;
default: abort ();
}
}
}
}

void v9 (signed short v74, unsigned char v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 1;
unsigned char v78 = 2;
unsigned char v77 = 6;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v80, signed char v81, unsigned int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 4;
unsigned char v84 = 5;
signed short v83 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
