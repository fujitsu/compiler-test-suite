#include <stdlib.h>
extern void v3 (signed short, unsigned int, signed char, signed char);
extern void (*v4) (signed short, unsigned int, signed char, signed char);
extern unsigned short v5 (unsigned int, signed short);
extern unsigned short (*v6) (unsigned int, signed short);
signed short v7 (unsigned short, unsigned char);
signed short (*v8) (unsigned short, unsigned char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned int);
extern unsigned char v13 (signed int, signed short);
extern unsigned char (*v14) (signed int, signed short);
extern signed int v15 (signed char, unsigned char, signed int, unsigned char);
extern signed int (*v16) (signed char, unsigned char, signed int, unsigned char);
void v17 (unsigned int, unsigned short, signed char, unsigned short);
void (*v18) (unsigned int, unsigned short, signed char, unsigned short) = v17;
extern void v19 (signed char, unsigned char);
extern void (*v20) (signed char, unsigned char);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (signed int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned char);
signed char v27 (signed short, signed short);
signed char (*v28) (signed short, signed short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = -3;
unsigned char v58 = 7;
signed short v57 = -4;

signed char v27 (signed short v60, signed short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 4U;
signed int v63 = -4;
signed short v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v65, unsigned short v66, signed char v67, unsigned short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -2;
signed int v70 = -2;
unsigned short v69 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v72, unsigned char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 3U;
unsigned short v75 = 6;
unsigned int v74 = 4U;
trace++;
switch (trace)
{
case 4: 
{
signed int v77;
signed short v78;
unsigned char v79;
v77 = 2 - 0;
v78 = 2 - -3;
v79 = v13 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 10: 
return -2;
default: abort ();
}
}
}
}
