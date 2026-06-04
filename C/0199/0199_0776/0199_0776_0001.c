#include <stdlib.h>
unsigned int v1 (signed char, unsigned int);
unsigned int (*v2) (signed char, unsigned int) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned int v9 (unsigned int, signed short, signed char, signed char);
unsigned int (*v10) (unsigned int, signed short, signed char, signed char) = v9;
extern void v11 (signed char, unsigned short, signed int);
extern void (*v12) (signed char, unsigned short, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed short v29 (unsigned char, unsigned short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v54 = 2;
signed char v53 = 2;
unsigned short v52 = 3;

unsigned int v9 (unsigned int v55, signed short v56, signed char v57, signed char v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = -2;
unsigned short v60 = 4;
unsigned char v59 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned short v64 = 3;
unsigned int v63 = 5U;
signed char v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v65, unsigned int v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -1;
unsigned short v68 = 1;
unsigned short v67 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed char v70;
unsigned short v71;
signed int v72;
v70 = v65 + -2;
v71 = v68 + v67;
v72 = 2 - -3;
v11 (v70, v71, v72);
}
break;
case 14: 
return 7U;
default: abort ();
}
}
}
}
