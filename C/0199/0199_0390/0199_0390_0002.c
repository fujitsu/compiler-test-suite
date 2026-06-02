#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (signed int, signed char);
extern void (*v4) (signed int, signed char);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed char v9 (unsigned char, signed int);
signed char (*v10) (unsigned char, signed int) = v9;
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned char, unsigned int, unsigned int);
unsigned int v19 (signed char, unsigned char);
unsigned int (*v20) (signed char, unsigned char) = v19;
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (unsigned int, signed short, signed int, signed int);
extern unsigned short (*v26) (unsigned int, signed short, signed int, signed int);
extern unsigned int v27 (signed short, signed short, signed short, unsigned short);
extern unsigned int (*v28) (signed short, signed short, signed short, unsigned short);
unsigned char v29 (unsigned short);
unsigned char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v61 = 7U;
unsigned int v60 = 4U;
unsigned char v59 = 5;

unsigned char v29 (unsigned short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 6;
signed char v64 = -3;
unsigned short v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed char v66, unsigned char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 2;
signed short v69 = -3;
unsigned char v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v71, signed int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 6U;
unsigned short v74 = 1;
unsigned short v73 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v76;
signed short v77;
v76 = 4 + 1;
v77 = v11 (v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
{
unsigned char v78;
signed short v79;
v78 = v71 + v71;
v79 = v11 (v78);
history[history_index++] = (int)v79;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}
