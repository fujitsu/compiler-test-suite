#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int);
extern unsigned char (*v2) (signed int, signed char, signed int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned char, unsigned char);
extern void (*v10) (signed int, unsigned char, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
void v13 (void);
void (*v14) (void) = v13;
extern signed char v15 (signed int, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned char, unsigned int);
extern void v17 (signed short, unsigned char, unsigned short);
extern void (*v18) (signed short, unsigned char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
unsigned char v21 (signed int, unsigned char, unsigned int);
unsigned char (*v22) (signed int, unsigned char, unsigned int) = v21;
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
unsigned char v25 (unsigned int);
unsigned char (*v26) (unsigned int) = v25;
extern signed int v27 (unsigned short, unsigned int);
extern signed int (*v28) (unsigned short, unsigned int);
extern signed short v29 (unsigned int, signed char, unsigned int);
extern signed short (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 5;
signed int v46 = 1;
signed short v45 = -4;

unsigned char v25 (unsigned int v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 4;
signed short v50 = -2;
signed int v49 = -4;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v52;
unsigned int v53;
signed int v54;
v52 = 3 - 3;
v53 = 1U - 6U;
v54 = v27 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 10: 
{
unsigned short v55;
unsigned int v56;
signed int v57;
v55 = 3 - 7;
v56 = v48 + 7U;
v57 = v27 (v55, v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

unsigned char v21 (signed int v58, unsigned char v59, unsigned int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 6;
unsigned char v62 = 0;
signed int v61 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned char v66 = 0;
signed short v65 = 1;
unsigned short v64 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
