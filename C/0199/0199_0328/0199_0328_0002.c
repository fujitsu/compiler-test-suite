#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed char v7 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v8) (unsigned char, unsigned char, unsigned char, signed short);
signed short v9 (unsigned char);
signed short (*v10) (unsigned char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v14) (unsigned int, unsigned int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
unsigned char v19 (signed char, unsigned short, signed short);
unsigned char (*v20) (signed char, unsigned short, signed short) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (unsigned int, unsigned char, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned char, unsigned short);
extern unsigned char v25 (unsigned short, signed short);
extern unsigned char (*v26) (unsigned short, signed short);
extern signed char v27 (unsigned int, unsigned int, signed int, unsigned int);
extern signed char (*v28) (unsigned int, unsigned int, signed int, unsigned int);
extern void v29 (signed short, unsigned short, signed short, unsigned char);
extern void (*v30) (signed short, unsigned short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v55 = 2U;
signed short v54 = 1;
unsigned char v53 = 5;

unsigned char v19 (signed char v56, unsigned short v57, signed short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 7;
signed char v60 = 3;
unsigned char v59 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = -4;
unsigned char v64 = 6;
unsigned short v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v68 = 1;
signed short v67 = 2;
signed int v66 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v69;
unsigned char v70;
unsigned short v71;
unsigned short v72;
v69 = 0U + 7U;
v70 = 3 + 6;
v71 = 3 - 7;
v72 = v23 (v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 2: 
{
signed short v73;
unsigned short v74;
signed short v75;
unsigned char v76;
v73 = 3 + -3;
v74 = 6 - 0;
v75 = 1 - v67;
v76 = 0 + 6;
v29 (v73, v74, v75, v76);
}
break;
case 16: 
return -1;
default: abort ();
}
}
}
}
