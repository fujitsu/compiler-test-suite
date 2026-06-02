#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned short v5 (unsigned char, unsigned int, unsigned short);
unsigned short (*v6) (unsigned char, unsigned int, unsigned short) = v5;
extern unsigned char v7 (signed char, unsigned int);
extern unsigned char (*v8) (signed char, unsigned int);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned short);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned short);
signed char v13 (unsigned char, unsigned char);
signed char (*v14) (unsigned char, unsigned char) = v13;
extern signed int v15 (unsigned short, signed short, unsigned int, unsigned short);
extern signed int (*v16) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
unsigned int v25 (signed short, signed int, unsigned char, signed int);
unsigned int (*v26) (signed short, signed int, unsigned char, signed int) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v58 = 7;
signed short v57 = 1;
signed short v56 = 1;

unsigned int v25 (signed short v59, signed int v60, unsigned char v61, signed int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -2;
unsigned short v64 = 4;
signed int v63 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v66, unsigned char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -3;
unsigned char v69 = 7;
unsigned short v68 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v71, unsigned int v72, unsigned short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -2;
unsigned int v75 = 7U;
signed int v74 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed char v77;
unsigned int v78;
unsigned char v79;
v77 = 1 - -3;
v78 = v75 - v72;
v79 = v7 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 13: 
return v73;
default: abort ();
}
}
}
}
