#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed char v3 (signed char, unsigned int, signed short, signed int);
signed char (*v4) (signed char, unsigned int, signed short, signed int) = v3;
extern signed char v5 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v6) (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
void v11 (unsigned short, signed short);
void (*v12) (unsigned short, signed short) = v11;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v19 (unsigned int, unsigned short);
extern unsigned int (*v20) (unsigned int, unsigned short);
extern unsigned char v21 (signed int, unsigned int, signed int);
extern unsigned char (*v22) (signed int, unsigned int, signed int);
extern signed short v23 (signed int, unsigned int, signed short, unsigned char);
extern signed short (*v24) (signed int, unsigned int, signed short, unsigned char);
unsigned short v25 (signed int, unsigned char, signed short);
unsigned short (*v26) (signed int, unsigned char, signed short) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v53 = 2;
signed int v52 = 2;
unsigned char v51 = 5;

unsigned short v25 (signed int v54, unsigned char v55, signed short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 7;
signed int v58 = 0;
signed char v57 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v60, signed short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 1;
unsigned short v63 = 5;
unsigned short v62 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v65, unsigned int v66, signed short v67, signed int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 5;
signed short v70 = 0;
unsigned char v69 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v72;
v72 = v15 ();
history[history_index++] = (int)v72;
}
break;
case 10: 
{
unsigned int v73;
unsigned short v74;
v73 = 4U + v66;
v74 = v9 (v73);
history[history_index++] = (int)v74;
}
break;
case 12: 
return v65;
default: abort ();
}
}
}
}
