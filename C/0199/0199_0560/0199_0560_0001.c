#include <stdlib.h>
extern unsigned int v3 (signed int, signed char);
extern unsigned int (*v4) (signed int, signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (unsigned short, signed int, signed int);
extern unsigned char (*v12) (unsigned short, signed int, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
void v23 (signed char);
void (*v24) (signed char) = v23;
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed short v27 (unsigned int, signed char);
extern signed short (*v28) (unsigned int, signed char);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v53 = 2U;
unsigned int v52 = 4U;
signed int v51 = 2;

signed char v29 (void)
{
{
for (;;) {
signed int v56 = -2;
signed short v55 = -4;
signed int v54 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v57;
signed char v58;
signed short v59;
v57 = 4U - 1U;
v58 = -4 - -1;
v59 = v27 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 3: 
{
unsigned int v60;
signed char v61;
signed short v62;
v60 = 2U - 2U;
v61 = 1 - 1;
v62 = v27 (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 5: 
return -4;
default: abort ();
}
}
}
}

void v23 (signed char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 1;
signed int v65 = -1;
unsigned char v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned int v69 = 5U;
signed short v68 = 2;
signed char v67 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
